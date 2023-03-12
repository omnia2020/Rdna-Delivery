import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class OrderPaymentMethod extends StatelessWidget {
  const OrderPaymentMethod({super.key, required this.ifPaid});
  final bool ifPaid;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleWidget(title: '${l10n.paymentMethod}'),
          16.verticalSpace,
          PaymentTile(
              payment: ifPaid ? 'Online' : 'Cash On Delivery', ifPaid: ifPaid),
          ifPaid ? 8.verticalSpace : const SizedBox(),
          ifPaid
              ? Row(
                  children: [
                    SvgPicture.asset(AssetsHelper.checkMarkIcon),
                    8.horizontalSpace,
                    Text(
                      l10n.customeAlreadyPaid,
                      style: AppStyles.positiveGreen14pxRegular,
                    )
                  ],
                )
              : const SizedBox(),
          24.verticalSpace,
        ],
      ),
    );
  }
}
