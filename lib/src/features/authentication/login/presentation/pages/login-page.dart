import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/validators/form_validator.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.isBack = false});
  final bool? isBack;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsHelper.backgroundImg2),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                autovalidateMode: AutovalidateMode.disabled,
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              AssetsHelper.logo,
                              width: 48.w,
                            ),
                            8.verticalSpace,
                            Text(
                              l10n.deliveryApp,
                              style: AppStyles.title18Regular,
                            )
                          ],
                        ),
                        //   const SwitchLangCard(),
                      ],
                    ),
                    100.verticalSpace,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.65,
                      child: Text(l10n.pleaseWriteYourPhoneOrmail,
                          style: AppStyles.title16Regular),
                    ),
                    44.verticalSpace,
                    CustomTextField(
                      controller: emailPhoneController,
                      keyboardType: TextInputType.text,
                      label: l10n.mobileNoOrMail,
                      validator: (field) =>
                          FormValidator.mailPhoneValidator(field!, l10n),
                    ),
                    36.verticalSpace,
                    CustomTextField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      label: l10n.password,
                      isPasswordField: true,
                      validator: (field) =>
                          FormValidator.passwordValidator(field!, l10n),
                    ),
                    32.verticalSpace,
                    CustomButton(
                      width: MediaQuery.of(context).size.width,
                      isDisabled: false,
                      backgroundColor: AppColors.yellowColor,
                      loading: false,
                      title: l10n.login,
                      titleStyle: AppStyles.title16Medium,
                      onPressed: () async {
                        // if (_key.currentState!.validate()) {
                        //   await authState.login(
                        //       auth: emailPhoneController.text,
                        //       pass: passwordController.text);
                        //   if (authState.appUser != null) {}
                        // }
                      },
                    ),
                    16.verticalSpace,
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        l10n.forgetPass,
                        style: AppStyles.content14pxRegularUnderline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailPhoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
