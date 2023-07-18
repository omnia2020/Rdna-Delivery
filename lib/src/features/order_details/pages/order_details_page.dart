import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order-list/presentation/providers/delivery_orders_provider.dart';
import 'package:rdna_delivery/src/features/order_details/sheets/sheets.dart';
import 'package:rdna_delivery/src/features/order_details/widgets/widgets.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({
    super.key,
    required this.id,
  });
  final int id;

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  showOrder() async {
    await Provider.of<DeliveryOrdersProvider>(context, listen: false)
        .showOrderDetails(widget.id);
  }

  @override
  void initState() {
    showOrder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Consumer<DeliveryOrdersProvider>(builder: (_, state, __) {
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
          disabled: state.singleOrderDetails?.data?.pickedByDeliveryAt == null,
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
        body: state.showLoading
            ? const Center(
                child: LoadingProgrss(),
              )
            : state.singleOrderDetails != null
                ? SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          25.verticalSpace,
                          ShippingAddressWidget(
                            address:
                                state.singleOrderDetails?.data?.address ?? '',
                            flat: state.singleOrderDetails?.data?.flat,
                            floor: state.singleOrderDetails?.data?.floor,
                            locationHome: state.singleOrderDetails?.data?.home,
                            notes: state.singleOrderDetails?.data?.addressNotes,
                          ),
                          16.verticalSpace,
                          const Divider(
                            color: AppColors.greyColorE5,
                            thickness: 1.2,
                          ),
                          16.verticalSpace,
                          ClientOrderDetailsInfo(
                            clientName:
                                state.singleOrderDetails?.data?.name ?? '',
                            note:
                                state.singleOrderDetails?.data?.addressNotes ??
                                    '',
                            phone: state.singleOrderDetails?.data?.phone ?? '',
                          ),
                          const Divider(
                            color: AppColors.greyColorE5,
                            thickness: 1.2,
                          ),
                          16.verticalSpace,
                          OrderPaymentMethod(
                            ifPaid:
                                state.singleOrderDetails?.data?.paymentMethod !=
                                        'cash'
                                    ? true
                                    : false,
                          ),
                          const Divider(
                            color: AppColors.greyColorE5,
                            thickness: 1.2,
                          ),
                          16.verticalSpace,
                          OrderSummary(
                              shippinFess: 80,
                              total: state.singleOrderDetails?.data
                                      ?.totalAfterDiscount ??
                                  0),
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
                  )
                : Container(),
      );
    });
  }
}
