import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({
    super.key,
    required this.child,
    required this.onSlide,
    required this.enabled,
  });
  final Widget child;
  final Function(BuildContext? context) onSlide;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Slidable(
      closeOnScroll: true,
      enabled: enabled,
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          onPressed: onSlide,
          backgroundColor: const Color(0xffbbf0c8),
          foregroundColor: AppColors.title2Color,
          label: l10n.confirmReceivingOrder,
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ]),
      child: child,
    );
  }
}
