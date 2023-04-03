import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/constants/app_constants.dart';
import 'package:rdna_delivery/src/core/helpers/session_manager.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserToggleStatus extends StatefulWidget {
  const UserToggleStatus({super.key});

  @override
  State<UserToggleStatus> createState() => _UserToggleStatusState();
}

class _UserToggleStatusState extends State<UserToggleStatus> {
  int toggleIndex = 0;

  init() async {
    String activeStatus = await sessionManager.getActiveStatus();
    if (activeStatus == AppConstants.userStatus[0].status!.toLowerCase()) {
      setState(() {
        toggleIndex = 1;
      });
    } else {
      setState(() {
        toggleIndex = 0;
      });
    }
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Consumer<AuthProvider>(builder: (_, state, __) {
      return ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
          side: const BorderSide(
            color: AppColors.greyBorder,
          ),
        ),
        minLeadingWidth: 16.w,
        title: Text(
          toggleIndex == 0 ? l10n.nonActive : l10n.active,
          style: AppStyles.content16pxMedium,
        ),
        visualDensity: VisualDensity.standard,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16.w,
              height: 16.w,
              decoration: BoxDecoration(
                color: toggleIndex == 0
                    ? AppColors.nonActiveColor
                    : AppColors.activeColor,
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ],
        ),
        trailing: Container(
          width: 51.w,
          height: 30.h,
          alignment: Alignment.center,
          child: ToggleSwitch(
            initialLabelIndex: toggleIndex,
            totalSwitches: 2,
            cornerRadius: 7.r,
            borderColor: [AppColors.radioGreyBorderColor],
            //activeFgColor: AppColors.activeColor,
            activeBgColor: [
              toggleIndex == 0
                  ? AppColors.nonActiveColor
                  : AppColors.activeColor,
            ],
            customHeights: [24.h],
            borderWidth: 1,
            minWidth: 24.w,
            minHeight: 30.h,
            radiusStyle: true,
            inactiveBgColor: AppColors.whiteColor,

            onToggle: (index) async {
              setState(() {
                toggleIndex = index ?? 0;
              });
              if (index == 1) {
                await state.userStartSession();
                if (state.userActiveModel != null) {
                  await sessionManager.setAciveStatus(
                      status: AppConstants.userStatus[0].status?.toLowerCase());
                }
              } else {
                await state.userEndSession();
                if (state.userActiveModel != null) {
                  await sessionManager.setAciveStatus(
                      status: AppConstants.userStatus[1].status?.toLowerCase());
                }
              }
            },
          ),
        ),
      );
    });
  }
}
