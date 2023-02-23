import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.itemsNo,
    required this.orderNo,
    this.status,
    required this.deliveryAddress,
  });
  final String orderNo;
  final Widget? status;
  final int itemsNo;
  final String deliveryAddress;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.overViewColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.disabledColor,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24.w,
                    height: 24.w,
                    child: SvgPicture.asset(AssetsHelper.orderLstIcon),
                  ),
                  16.horizontalSpace,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${l10n.orderNo}. $orderNo',
                        style: AppStyles.title16Medium,
                      ),
                      12.verticalSpace,
                      Text(
                        '$itemsNo ${l10n.items}',
                        style: AppStyles.content14pxRegular,
                      ),
                      12.verticalSpace,
                      Row(
                        children: [
                          Text(
                            '${l10n.deliverTo}',
                            style: AppStyles.black14Regular,
                          ),
                          6.horizontalSpace,
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: const Color(0xff008836),
                            size: 16.w,
                          ),
                          6.horizontalSpace,
                          Text(
                            '$deliveryAddress',
                            style: AppStyles.black14Regular,
                          ),
                        ],
                      ),
                    ],
                  ),
                  status ?? const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
