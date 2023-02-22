import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class MonthKpisCard extends StatelessWidget {
  const MonthKpisCard({
    super.key,
    required this.backgroundColor,
    required this.kpi,
    required this.monthName,
    required this.status,
    this.isCurrent = false,
  });
  final Color backgroundColor;
  final String monthName;
  final String kpi;
  final String status;
  final bool isCurrent;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: isCurrent ? AppColors.transparent : const Color(0xffDEDEDE),
        ),
        boxShadow: [
          const BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 40,
            color: Color(0xff0000001A),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$monthName ${l10n.kpi}',
              style: AppStyles.primary16pxBold,
            ),
            14.verticalSpace,
            Text(
              '$kpi',
              style: AppStyles.primary16pxRegular,
            ),
            40.verticalSpace,
            SvgPicture.asset(
              AssetsHelper.graph1,
              color: AppColors.yellowColor,
            ),
            16.verticalSpace,
            Text(
              status,
              style: AppStyles.lightBlack2_16Regular,
            ),
          ],
        ),
      ),
    );
  }
}
