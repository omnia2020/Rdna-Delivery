import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile({super.key, required this.payment, required this.ifPaid});
  final String? payment;
  final bool ifPaid;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: ListTile(
        onTap: ifPaid ? () {} : null,
        title: Text(
          '$payment',
          style: AppStyles.lightBlack3030_16Medium,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColors.lightBlack3030,
        ),
        tileColor: AppColors.overViewColor,
        leading: SvgPicture.asset(
          AssetsHelper.cashIcon,
          color: AppColors.lightBlack3030,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: const BorderSide(
            color: AppColors.disabledColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
    );
  }
}
