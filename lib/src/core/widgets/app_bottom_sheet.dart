import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

showAppBottomSheet(BuildContext context, Widget child) {
  return showModalBottomSheet(
    backgroundColor: AppColors.whiteColor,
    context: context,
    builder: (context) => child,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(33),
        topRight: Radius.circular(33),
      ),
    ),
  );
}
