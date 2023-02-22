import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class NotificationImg extends StatelessWidget {
  const NotificationImg({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74.w,
      height: 74.w,
      decoration: BoxDecoration(
        color: AppColors.greyColorF5,
        borderRadius: BorderRadius.circular(6.r),
        image: const DecorationImage(
          image: AssetImage(
            AssetsHelper.orderDummyImg,
          ),
        ),
      ),
    );
  }
}
