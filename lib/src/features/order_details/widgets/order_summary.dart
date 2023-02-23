import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    super.key,
    required this.shippinFess,
    required this.total,
  });
  final num? shippinFess;
  final num? total;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(title: '${l10n.orderSummary}'),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${l10n.shippingFees}:',
                style: AppStyles.content15pxRegular,
              ),
              Text(
                '$shippinFess ${l10n.egp}',
                style: AppStyles.content15pxRegular,
              ),
            ],
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${l10n.total}:',
                style: AppStyles.title16Bold,
              ),
              Text(
                '$total ${l10n.egp}',
                style: AppStyles.title16Bold,
              ),
            ],
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}
