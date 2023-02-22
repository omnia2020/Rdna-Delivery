import 'package:flutter/material.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      backgroundColor: AppColors.whiteColor,
      appBar: TransparentAppBar(
        title: Text(l10n.notifications, style: AppStyles.title18Medium),
        backButton: const SizedBox(),
      ),
      body: Container(),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           ListView.separated(
      //             physics: const NeverScrollableScrollPhysics(),
      //             itemCount: 15,
      //             shrinkWrap: true,
      //             itemBuilder: (_, index) {
      //               return Padding(
      //                 padding: EdgeInsets.only(bottom: 16.h, top: 12.h),
      //                 child: const NotificationTile(),
      //               );
      //             },
      //             separatorBuilder: (BuildContext context, int index) {
      //               return Divider(
      //                 color: AppColors.borderGreyColor.withOpacity(0.2),
      //               );
      //             },
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
