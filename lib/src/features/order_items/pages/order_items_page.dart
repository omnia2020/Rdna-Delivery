import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order-list/presentation/providers/delivery_orders_provider.dart';
import 'package:rdna_delivery/src/features/order_items/widgets/widgets.dart';

class OrderItemsPage extends StatelessWidget {
  const OrderItemsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      appBar: TransparentAppBar(
        title: Text(
          l10n.orderItems,
          style: AppStyles.title18Medium,
        ),
      ),
      body: Consumer<DeliveryOrdersProvider>(
        builder: (_, state, __) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    25.verticalSpace,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                          state.singleOrderDetails?.data?.orderItems?.length,
                      itemBuilder: (_, index) {
                        final category =
                            state.singleOrderDetails?.data?.orderItems?[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category?.title ?? '',
                              style: AppStyles.content16pxBold,
                            ),
                            24.verticalSpace,
                            Wrap(
                              children: List.generate(
                                category?.products?.length ?? 0,
                                (index) {
                                  final product = category?.products?[index];
                                  return ItemsTile(
                                    image: product!.image!,
                                    price: product.price?.toString() ?? '',
                                    productName: product.title ?? '',
                                    onDelete: () {},
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
