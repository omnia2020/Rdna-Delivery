import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';


class OverviewCard extends StatelessWidget {
  const OverviewCard(
      {super.key,
      required this.color,
      required this.title,
      required this.number});
  final int number;
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 107.w,
      decoration: BoxDecoration(
        color: AppColors.overViewColor,
        border: Border.all(color: AppColors.overViewBorderColor),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            circleColor(color, number),
            4.verticalSpace,
            Text(
              title,
              style: AppStyles.lightBlack12Regular,
            ),
            12.verticalSpace,
            SvgPicture.asset(AssetsHelper.graph1),
          ],
        ),
      ),
    );
  }
}

Widget circleColor(Color color, int number) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 12.w,
        height: 12.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      8.horizontalSpace,
      Text(
        '$number',
        style: AppStyles.primary18pxSemiBold,
      ),
    ],
  );
}
