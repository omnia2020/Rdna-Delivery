import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class RadioLstTile extends StatelessWidget {
  const RadioLstTile({
    super.key,
    required this.borderColor,
    required this.groupVal,
    required this.onChanged,
    required this.val,
    required this.title,
  });
  final Color borderColor;
  final int val;
  final int groupVal;
  final Function(int?) onChanged;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: RadioListTile(
        visualDensity: VisualDensity.compact,
        title: Text(
          title,
          style: AppStyles.contentExpansion16Regular,
        ),
        toggleable: true,
        tileColor: AppColors.babyBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(
            color: borderColor,
          ),
        ),
        groupValue: groupVal,
        value: val,
        onChanged: onChanged,
        activeColor: AppColors.yellowColor,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
