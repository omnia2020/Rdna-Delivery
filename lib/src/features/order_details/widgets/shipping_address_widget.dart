import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.address});
  final String? address;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.66,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(title: '${l10n.shippingAddress}'),
                16.verticalSpace,
                Text(
                  '$address',
                  style: AppStyles.content15pxRegular,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  '${l10n.directions}',
                  style: AppStyles.babyBlue14pxMedium,
                ),
                6.horizontalSpace,
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.babyBlueColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
