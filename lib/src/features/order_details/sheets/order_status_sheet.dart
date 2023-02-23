import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class OrderStatusSheet extends StatefulWidget {
  const OrderStatusSheet({
    super.key,
  });
  @override
  State<OrderStatusSheet> createState() => _OrderStatusSheetState();
}

class _OrderStatusSheetState extends State<OrderStatusSheet> {
  int? selectedVal = 0;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.37,
          decoration: new BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.orderStatus,
                    style: AppStyles.content18pxMedium,
                  ),
                  30.verticalSpace,
                  Text('${l10n.haveUDeliveredTheOrder}',
                      style: AppStyles.content16pxRegular),
                  16.verticalSpace,
                  RadioLstTile(
                    title: l10n.yesOrderIsDelivered,
                    borderColor: AppColors.yellowColor,
                    groupVal: selectedVal!,
                    val: 1,
                    onChanged: (val) {
                      setState(() {
                        selectedVal = val;
                      });
                      context.router.pop();
                    },
                  ),
                  16.verticalSpace,
                  RadioLstTile(
                    title: l10n.noThereIsAnIssueWithOrder,
                    borderColor: AppColors.borderDarkGreyColor,
                    groupVal: selectedVal!,
                    val: 2,
                    onChanged: (val) {
                      setState(() {
                        selectedVal = val;
                      });
                      context.router.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(19.r),
              bottomLeft: Radius.circular(19.r),
            ),
            onTap: () {
              context.router.pop();
            },
            child: Container(
              alignment: Alignment.center,
              width: 64.w,
              height: 64.w,
              decoration: BoxDecoration(
                color: AppColors.borderDarkGreyColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(19.r),
                  bottomLeft: Radius.circular(19.r),
                ),
              ),
              child: const Icon(
                Icons.close,
                color: AppColors.borderGreyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
