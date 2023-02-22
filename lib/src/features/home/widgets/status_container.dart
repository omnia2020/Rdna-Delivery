import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/home/widgets/widgets.dart';


class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
    required this.userStatus,
    required this.borderColor,
    required this.statusColor,
    required this.onTap,
  });
  final String? userStatus;
  final Color? borderColor;
  final Color? statusColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            builder: (_) {
              return StatusBottomSheet(
                onTap: onTap,
              );
            });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.32,
        child: Row(
          children: [
            Container(
              width: 16.w,
              height: 16.w,
              decoration: BoxDecoration(
                color: statusColor ?? AppColors.positiveGreenColor,
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: borderColor ?? AppColors.borderActiveColor,
                ),
              ),
            ),
            10.horizontalSpace,
            Text(
              userStatus ?? '',
              style: AppStyles.content16pxMedium,
            ),
            8.horizontalSpace,
            const Icon(Icons.keyboard_arrow_down,
                color: AppColors.onBoardingTitleColor),
          ],
        ),
      ),
    );
  }
}
