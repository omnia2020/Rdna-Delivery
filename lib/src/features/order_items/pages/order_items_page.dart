import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
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
      body: SafeArea(
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
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Category name',
                          style: AppStyles.content16pxBold,
                        ),
                        24.verticalSpace,
                        Wrap(
                          children: List.generate(
                            4,
                            (index) {
                              return ItemsTile(
                                image: '',
                                price: '30',
                                productName: 'productName',
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
      ),
    );
  }
}
