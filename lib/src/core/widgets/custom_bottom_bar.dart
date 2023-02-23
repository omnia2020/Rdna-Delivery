import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
    required this.title,
    required this.onPressed,
    required this.loading,
    required this.height,
    this.widget,
  });
  final String title;
  final Function() onPressed;
  final bool loading;
  final double height;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff7E7E7E),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h, bottom: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget ?? const SizedBox(),
            CustomButton(
              title: title,
              titleStyle: AppStyles.title16Medium,
              backgroundColor: AppColors.yellowColor,
              isDisabled: false,
              width: double.infinity,
              height: 56.h,
              onPressed: onPressed,
              loading: loading,
            ),
          ],
        ),
      ),
    );
  }
}
