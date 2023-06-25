import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/validators/form_validator.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/login/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController email = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ScaffoldWrapper(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsHelper.backgroundImg2),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Form(
              key: _key,
              //  autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  60.verticalSpace,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackWidget(),
                      // SwitchLangCard(),
                    ],
                  ),
                  41.verticalSpace,
                  Text(
                    l10n.forgotPassword,
                    style: AppStyles.onBoardingTitle24Bold,
                  ),
                  64.verticalSpace,
                  Text(
                    l10n.enterEmailAddressToResetPass,
                    style: AppStyles.contentExpansion16Regular,
                  ),
                  28.verticalSpace,
                  CustomTextField(
                    controller: email,
                    keyboardType: TextInputType.text,
                    label: l10n.email,
                    isPasswordField: false,
                    validator: (String? email) =>
                        FormValidator.emailValidator(email!, l10n),
                  ),
                  250.verticalSpace,
                  Consumer<AuthProvider>(
                    builder: (_, state, __) {
                      return CustomButton(
                        loading: state.showLoading,
                        onPressed: () async {
                          if (_key.currentState!.validate()) {
                            bool status =
                                await state.forgetPassword(email: email.text);
                            if (status) {
                              AppToast.successToast(l10n.theForgetCodeIsSent);
                              context.router.replace(const CheckInboxRoute());
                            }
                          }
                        },
                        title: l10n.resetPassword,
                        titleStyle: AppStyles.title16Medium,
                        backgroundColor: AppColors.yellowColor,
                        isDisabled: false,
                        width: double.infinity,
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
