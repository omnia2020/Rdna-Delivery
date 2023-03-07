import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order-list/presentation/providers/delivery_orders_provider.dart';
import 'package:rdna_delivery/src/features/order-list/widgets/widgets.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return ScaffoldWrapper(
      body: Consumer<DeliveryOrdersProvider>(
        builder: (_, state, __) {
          if (state.showLoading) {
            return const Center(
              child: LoadingProgrss(),
            );
          } else {
            if (state.ordersData!.isNotEmpty) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.verticalSpace,
                        // CustomSearchBar(hint: l10n.searchByOrderNo, onSearch: () {}),
                        // 24.verticalSpace,
                        Text(l10n.currentOrders,
                            style: AppStyles.title14Regular),
                        16.verticalSpace,
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.ordersData?.length,
                          itemBuilder: (context, index) {
                            final order = state.ordersData?[index];
                            return Padding(
                              padding: EdgeInsets.only(bottom: 16.h),
                              child: SlideWidget(
                                enabled: true,
                                onSlide: (context) async {
                                  await state.acceptOrder(orderID: order!.id);
                                  if (state.acceptOrderModel != null) {
                                    AppToast.successToast(
                                        l10n.thankUForReceivingOrder);
                                  }
                                },
                                child: OrderCard(
                                  orderData: order,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: Text(
                  l10n.noDataFound,
                  style: AppStyles.redNote14pxBold,
                ),
              );
            }
          }
        },
      ),
    );
  }
}
