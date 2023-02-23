import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({
    super.key,
    required this.borderColor,
    required this.cardColor,
    required this.status,
  });
  final String status;
  final Color cardColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: Text(
          status,
          style: TextStyle(
            fontSize: 14.sp,
            color: borderColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
