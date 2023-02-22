import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';


class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: () {
        context.router.pop();
      },
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios, size: 24.w),
          Text(
            l10n.back,
            style: AppStyles.title18Medium,
          )
        ],
      ),
    );
  }
}
