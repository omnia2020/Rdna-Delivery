import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class AppCheckboxTile extends StatelessWidget {
  const AppCheckboxTile({
    super.key,
    required this.checked,
    required this.onCheck,
    required this.title,
    this.secondary,
    this.hoverState,
  });
  final bool checked;
  final String title;
  final Function(bool?) onCheck;
  final Widget? secondary;
  final Widget? hoverState;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Row(
        children: [
          Text(
            title,
            style: AppStyles.title16Regular,
          ),
          12.horizontalSpace,
          hoverState ?? const SizedBox(),
        ],
      ),
      contentPadding: EdgeInsets.zero,
      activeColor: AppColors.yellowColor,
      controlAffinity: ListTileControlAffinity.leading,
      checkColor: AppColors.whiteColor,
      value: checked,
      onChanged: onCheck,
      secondary: secondary ?? const SizedBox(),
    );
  }
}
