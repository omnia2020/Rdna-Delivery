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
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';


class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController forgetCode = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

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
        child: Consumer<AuthProvider>(
          builder: (_, state, __) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Form(
                    autovalidateMode: AutovalidateMode.disabled,
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        40.verticalSpace,
                        Text(
                          l10n.resetPassword.toUpperCase(),
                          style: AppStyles.title18MBold,
                        ),
                        24.verticalSpace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                          child: Text(
                            l10n.pleaseWriteUrPhoneToLogin,
                            style: AppStyles.title16Regular,
                          ),
                        ),
                        132.verticalSpace,
                        CustomTextField(
                          controller: forgetCode,
                          keyboardType: TextInputType.text,
                          isPasswordField: false,
                          label: l10n.code,
                          validator: (field) =>
                              FormValidator.mailPhoneValidator(field!, l10n),
                        ),
                        20.verticalSpace,
                        CustomTextField(
                          controller: newPassword,
                          keyboardType: TextInputType.text,
                          isPasswordField: true,
                          label: l10n.yourNewPass,
                          validator: (field) =>
                              FormValidator.passwordValidator(field!, l10n),
                        ),
                        20.verticalSpace,
                        CustomTextField(
                          controller: confirmNewPassword,
                          keyboardType: TextInputType.text,
                          isPasswordField: true,
                          label: l10n.confirmNewPass,
                          validator: (String? confirmPassword) {
                            FormValidator.passwordValidator(
                                confirmPassword!, l10n);
                            if (newPassword.text != confirmNewPassword.text) {
                              return l10n.passwordMustBeTheSame;
                            }
                            return null;
                          },
                        ),
                        60.verticalSpace,
                        CustomButton(
                          width: MediaQuery.of(context).size.width,
                          isDisabled: false,
                          backgroundColor: AppColors.yellowColor,
                          title: l10n.resetPassword,
                          titleStyle: AppStyles.title16Medium,
                          loading: state.showLoading,
                          onPressed: () async {
                            if (_key.currentState!.validate()) {
                              bool status = await state.resetPassword(
                                code: forgetCode.text,
                                confirmPass: confirmNewPassword.text,
                                pass: newPassword.text,
                              );
                              if (status) {
                                AppToast.successToast(
                                    l10n.passwordIsResetSuccessfullyLoginAgain);
                                context.router.replaceAll([LoginRoute()]);
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
