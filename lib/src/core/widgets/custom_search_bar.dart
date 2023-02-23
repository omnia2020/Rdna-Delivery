import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key, required this.hint, required this.onSearch});
  final String hint;
  final Function() onSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.borderColor,
        ),
        boxShadow: [
          const BoxShadow(
            color: AppColors.borderColor,
            offset: Offset(0, 4),
            blurRadius: 8,
          )
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 12.w),
            child: SvgPicture.asset(
              AssetsHelper.searchIcon,
              width: 20.w,
            ),
          ),
          hintText: hint,
          hintStyle: AppStyles.content16pxOpacity50,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 16.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
            ),
          ),
        ),
        onTap: onSearch,
      ),
    );
  }
}
