import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key, required this.icon, required this.onTap});
  final String icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.borderColor,
          ),
          boxShadow: [
            const BoxShadow(
              color: AppColors.borderColor,
              offset: Offset(0, 4),
              blurRadius: 8,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
