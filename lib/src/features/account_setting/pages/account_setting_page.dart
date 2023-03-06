import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/account_setting/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer<AuthProvider>(builder: (_, authState, __) {
      return ScaffoldWrapper(
        appBar: TransparentAppBar(
          title: Text(
            l10n.accountSettings,
            style: AppStyles.title18Medium,
          ),
          backButton: const SizedBox(),
          bottom: authState.showLoading
              ? const LinearProgressIndicator(
                  backgroundColor: AppColors.primaryColor,
                  color: AppColors.yellowColor,
                )
              : const SizedBox(),
        ),
        body: Opacity(
          opacity: authState.showLoading ? 0.3 : 1,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    25.verticalSpace,
                    Text(
                      l10n.changeAccountSettingEasily,
                      style: AppStyles.contentExpansion16Regular,
                    ),
                    24.verticalSpace,
                    SettingTile(
                      icon: AssetsHelper.profileIcon,
                      title: l10n.profile,
                      onPressed: () {
                        context.router.push(const ProfileRoute());
                      },
                    ),
                    32.verticalSpace,
                    const Divider(
                      color: AppColors.greyColorF5,
                      thickness: 2,
                    ),
                    12.verticalSpace,
                    ListTile(
                      leading: SvgPicture.asset(AssetsHelper.logoutIcon),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primaryColor,
                      ),
                      title: Text(
                        l10n.logout,
                        style: AppStyles.content14pxRegular,
                      ),
                      onTap: () async {
                        await authState.logout();
                        if (authState.logoutModel != null) {
                          AppToast.successToast(l10n.successfullyLogout);
                          context.router.replaceAll([LoginRoute()]);
                        }
                      },
                    ),
                    16.verticalSpace,
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
