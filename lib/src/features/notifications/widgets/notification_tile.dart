import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/notifications/models/models.dart';
import 'package:rdna_delivery/src/features/notifications/widgets/widgets.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key, required this.notificationData});
  final NotificationData? notificationData;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: () {
        GetIt.instance<AppRouter>().pushAll(
          [
            Dashboard(
              children: [
                OrderListRouter(children: [
                  const OrderListRoute(),
                  OrderDetailsRoute(id: notificationData!.order!),
                ]),
              ],
            ),
          ],
        );
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationImg(img: notificationData!.icon!),
            12.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OrderNo. ${notificationData?.id}',
                  style: AppStyles.primary14pxBold1F,
                ),
                2.verticalSpace,
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Text(
                    '${notificationData?.title ?? ''}',
                    style: AppStyles.primary14pxBold1F,
                  ),
                ),
                8.verticalSpace,
                SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.63,
                  child: Text(
                    notificationData?.description ?? '',
                    style: AppStyles.title14Regular,
                  ),
                ),
                8.verticalSpace,
                CustomButton(
                  width: 88.w,
                  height: 33.h,
                  isDisabled: false,
                  backgroundColor: AppColors.yellowColor,
                  title: l10n.check,
                  titleStyle: AppStyles.title14Medium,
                  onPressed: () {
                    GetIt.instance<AppRouter>().pushAll(
                      [
                        Dashboard(
                          children: [
                            OrderListRouter(children: [
                              const OrderListRoute(),
                              OrderDetailsRoute(id: notificationData!.order!),
                            ]),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            const Spacer(),
            Text(
              DateFormat.yMMMd().format(DateTime.parse(
                  notificationData?.createdAt ??
                      '2023-03-21T22:30:36.000000Z')),
              style: AppStyles.primary14pxBold1F,
            ),
          ],
        ),
      ),
    );
  }
}
