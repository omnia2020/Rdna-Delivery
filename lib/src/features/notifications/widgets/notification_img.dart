import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class NotificationImg extends StatelessWidget {
  const NotificationImg({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        color: AppColors.greyColorF5,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: SvgPicture.network(img, fit: BoxFit.cover),
    );
  }
}
