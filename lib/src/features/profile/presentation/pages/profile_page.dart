import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/validators/form_validator.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/models/models.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController? nameController;
  TextEditingController? mobileController;
  TextEditingController? emailController;
  UserInfo? userInfo;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  void initState() {
    init();
    super.initState();
  }

  init() {
    userInfo =
        Provider.of<AuthProvider>(context, listen: false).appUser?.userInfo;
    nameController = TextEditingController(text: userInfo?.name ?? '');
    emailController = TextEditingController(text: userInfo?.email ?? '');
    mobileController = TextEditingController(text: userInfo?.phoneNumber ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer<AuthProvider>(builder: (_, state, __) {
      return ScaffoldWrapper(
        appBar: TransparentAppBar(
          title: Text(l10n.profile, style: AppStyles.title18Medium),
        ),
        bottomNavigationBar: CustomBottomBar(
          height: 110.h,
          title: l10n.update,
          onPressed: () async {
            if (_key.currentState!.validate()) {
              bool status = await state.updateUserInfo(userInfo: userInfo);
              if (status) {
                await AppToast.successToast(l10n.profileIsUpdated);
                context.router.pop();
              }
            }
          },
          loading: state.showLoading,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    20.verticalSpace,
                    CustomTextField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      label: l10n.fullName,
                      validator: (field) =>
                          FormValidator.fieldEmptyValidator(field!, l10n),
                      onChanged: (String? s) {
                        setState(() {
                          userInfo?.name = nameController?.text;
                        });
                      },
                    ),
                    28.verticalSpace,
                    CustomTextField(
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      label: l10n.mobileNumber,
                      validator: (field) =>
                          FormValidator.validateMobile(field!, l10n),
                      onChanged: (String? s) {
                        setState(() {
                          userInfo?.phoneNumber = mobileController?.text;
                        });
                      },
                    ),
                    28.verticalSpace,
                    CustomTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      label: l10n.email,
                      validator: (field) =>
                          FormValidator.emailValidator(field!, l10n),
                      onChanged: (String? s) {
                        setState(() {
                          userInfo?.email = emailController?.text;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
