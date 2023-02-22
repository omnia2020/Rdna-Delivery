import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/home/widgets/widgets.dart';

class StatusBottomSheet extends StatefulWidget {
  const StatusBottomSheet({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
  @override
  State<StatusBottomSheet> createState() => _StatusBottomSheetState();
}

class _StatusBottomSheetState extends State<StatusBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          decoration: new BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.status,
                    style: AppStyles.content18pxMedium,
                  ),
                  30.verticalSpace,
                  StatusCardColor(
                    borderColor: AppColors.borderActiveColor,
                    color: AppColors.positiveGreenColor,
                    text: l10n.active,
                    onTap: () async {},
                  ),
                  const Divider(
                    color: AppColors.greyColorF5,
                    thickness: 2,
                  ),
                  StatusCardColor(
                    borderColor: AppColors.borderInvisibleColor,
                    color: AppColors.invisibleColor,
                    text: l10n.invisible,
                    onTap: () async {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: InkWell(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(19.r),
              bottomLeft: Radius.circular(19.r),
            ),
            onTap: () {
              context.router.pop();
            },
            child: Container(
              alignment: Alignment.center,
              width: 64.w,
              height: 64.w,
              decoration: BoxDecoration(
                color: AppColors.borderDarkGreyColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(19.r),
                  bottomLeft: Radius.circular(19.r),
                ),
              ),
              child: const Icon(
                Icons.close,
                color: AppColors.borderGreyColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
