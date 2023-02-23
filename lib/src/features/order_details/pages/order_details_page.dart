import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order_details/sheets/order_status_sheet.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      appBar: TransparentAppBar(
        title: Text(
          l10n.orderDetails,
          style: AppStyles.title18Medium,
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        height: 105.h,
        title: l10n.confirmDeliveringOrder,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              builder: (_) {
                return const OrderStatusSheet();
              });
        },
        loading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              25.verticalSpace,
              const ShippingAddressWidget(
                  address: '12 home st. Al Maadi, nasr square, Egypt'),
              16.verticalSpace,
              const Divider(
                color: AppColors.greyColorE5,
                thickness: 1.2,
              ),
              16.verticalSpace,
              const ClientOrderDetailsInfo(
                clientName: 'Mohamed Gamal Al din',
                note:
                    'Please dont knock the door once you reach, just call me via intercom in order to open the door',
                phone: '01013733002',
              ),
              const Divider(
                color: AppColors.greyColorE5,
                thickness: 1.2,
              ),
              16.verticalSpace,
              const OrderPaymentMethod(
                ifPaid: true,
              ),
              const Divider(
                color: AppColors.greyColorE5,
                thickness: 1.2,
              ),
              16.verticalSpace,
              const OrderSummary(shippinFess: 80, total: 180),
              const Divider(
                color: AppColors.greyColorE5,
                thickness: 1.2,
              ),
              16.verticalSpace,
              const OrderItemsTile(),
              25.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
