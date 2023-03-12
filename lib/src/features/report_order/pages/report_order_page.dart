import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/validators/form_validator.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/order-list/presentation/providers/delivery_orders_provider.dart';

class ReportOrderPage extends StatefulWidget {
  const ReportOrderPage({super.key});

  @override
  State<ReportOrderPage> createState() => _ReportOrderPageState();
}

class _ReportOrderPageState extends State<ReportOrderPage> {
  TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      appBar: const TransparentAppBar(),
      body: Consumer<DeliveryOrdersProvider>(
        builder: (_, state, __) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      25.verticalSpace,
                      Text(
                        '${l10n.issueWithTheOrder}',
                        style: AppStyles.title18Bold,
                      ),
                      24.verticalSpace,
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.74,
                        child: Text(
                            '${l10n.pleaseTellUsMoreInfoAboutSituation}',
                            style: AppStyles.title16Regular),
                      ),
                      240.verticalSpace,
                      CustomTextField(
                        controller: controller,
                        keyboardType: TextInputType.text,
                        maxLines: 6,
                        label: l10n.whatIsHappened,
                        hint: l10n.tellUsYourSituation,
                        validator: (field) =>
                            FormValidator.mailPhoneValidator(field!, l10n),
                      ),
                      32.verticalSpace,
                      CustomButton(
                        isDisabled: false,
                        backgroundColor: AppColors.yellowColor,
                        title: l10n.submit,
                        titleStyle: AppStyles.title16Medium,
                        loading: state.showLoading,
                        width: double.infinity,
                        onPressed: () async {
                          if (_key.currentState!.validate()) {
                            await state.completeDeliverOrder(
                              id: state.singleOrderDetails!.data!.id,
                              status: false,
                              issue: controller.text,
                            );
                            if (state.completeOrder != null) {
                              AppToast.successToast(l10n.thankUForReporting);
                              await Provider.of<DeliveryOrdersProvider>(context,
                                      listen: false)
                                  .listAllDeliveryOrders();
                              GetIt.instance<AppRouter>().pushAll(
                                [
                                  const Dashboard(
                                    children: [
                                      OrderListRouter(children: [
                                        const OrderListRoute(),
                                      ]),
                                    ],
                                  ),
                                ],
                              );
                            }
                          }
                        },
                      ),
                      12.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
