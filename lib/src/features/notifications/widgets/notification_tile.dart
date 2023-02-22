import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/notifications/widgets/widgets.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const NotificationImg(img: ''),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.63,
              child: Text(
                'New Order Is Available',
                style: AppStyles.primary12pxMedium,
              ),
            ),
            8.verticalSpace,
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.63,
              child: Text(
                'check order ED1245 came to be ready by you or another user.',
                style: AppStyles.title14Regular,
              ),
            ),
            8.verticalSpace,
            CustomButton(
              width: 88.w,
              height: 33.h,
              isDisabled: false,
              backgroundColor: AppColors.yellowColor,
              title: 'Check',
              titleStyle: AppStyles.title14Medium,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
