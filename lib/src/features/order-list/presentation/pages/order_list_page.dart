import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
  //  final l10n = context.l10n;

    return ScaffoldWrapper(
      body: Container(),
      // body: SafeArea(
      //     child: SingleChildScrollView(
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 16.w),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         30.verticalSpace,
      //         CustomSearchBar(hint: l10n.searchByOrderNo, onSearch: () {}),
      //         24.verticalSpace,
      //         Text(l10n.currentOrders, style: AppStyles.title14Regular),
      //         16.verticalSpace,
      //         ListView.builder(
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           itemCount: 5,
      //           itemBuilder: (context, index) {
      //             return Padding(
      //               padding: EdgeInsets.only(bottom: 16.h),
      //               child: const OrderCard(
      //                 itemsNo: 2,
      //                 orderNo: 'Af248',
      //                 deliveryAddress: 'Maadi',
      //               ),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // )),
    );
  }
}
