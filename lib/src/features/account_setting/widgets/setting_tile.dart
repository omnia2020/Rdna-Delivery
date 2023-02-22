import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.title,
  });
  final String icon;
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.onBoardingTitleColor,
      ),
      leading: Container(
        alignment: Alignment.center,
        width: 40.w,
        height: 40.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(
            color: const Color(0xffDBDBDB),
          ),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: SvgPicture.asset(icon),
      ),
      title: Text(title, style: AppStyles.title14Regular),
      tileColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: const BorderSide(
          color: Color(0xffEFEFEF),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
    );
  }
}
