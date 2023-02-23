import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class OrderItemsTile extends StatelessWidget {
  const OrderItemsTile({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListTile(
        onTap: () {
          context.router.push(const OrderItemsRoute());
        },
        title: Text(
          '${l10n.orderItems}',
          style: AppStyles.lightBlack3030_16Medium,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColors.lightBlack3030,
        ),
        tileColor: AppColors.overViewColor,
        leading: SvgPicture.asset(
          AssetsHelper.orderLstIcon,
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
