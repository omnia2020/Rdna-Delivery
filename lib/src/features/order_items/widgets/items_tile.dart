import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class ItemsTile extends StatelessWidget {
  const ItemsTile({
    super.key,
    required this.image,
    required this.price,
    required this.productName,
    required this.onDelete,
  });
  final String productName;
  final String image;
  final String price;
  final Function() onDelete;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 39.w,
              height: 39.w,
              decoration: BoxDecoration(
                color: const Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            16.horizontalSpace,
            Text(
              productName,
              style: AppStyles.content16pxRegular,
            ),
            const Spacer(),
            Text(
              '$price ${l10n.egp}',
              style: AppStyles.darkGrey14pxRegular,
            ),
          ],
        ),
        const Divider(
          color: AppColors.greyColor,
          // thickness: 1.2,
        ),
      ],
    );
  }
}
