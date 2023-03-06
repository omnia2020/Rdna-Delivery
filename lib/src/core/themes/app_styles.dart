import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class AppStyles {
  const AppStyles._();
  static TextStyle get primary16pxBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      );
  static TextStyle get primary16pxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
      );
  static TextStyle get primary18pxSemiBold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryColor,
      );
  static TextStyle get lightBlack12Regular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightBlack,
      );
  static TextStyle get lightBlack2_16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightBlack2,
      );
  static TextStyle get white14Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      );
  static TextStyle get white15Regular => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      );
  static TextStyle get content20pxBold => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content16pxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor,
        height: 1.5.h,
      );
  static TextStyle get content16pxRegularOpacit50 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor.withOpacity(0.5),
      );
  static TextStyle get content16pxOpacity50 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor.withOpacity(0.5),
      );
  static TextStyle get content16pxBoldUnderLine => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.contentBlackColor,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.blackColor,
        decorationThickness: 1,
      );
  static TextStyle get content15pxRegular => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor,
        //  height: 1.4,
      );
  static TextStyle get content14pxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor,
        height: 1.4,
      );
  static TextStyle get content14pxRegularUnderline => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor,
        height: 1.4,
        decoration: TextDecoration.underline,
      );
  static TextStyle get content14pxLight => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w300,
        color: AppColors.contentBlackColor,
      );

  static TextStyle get content14pxRegularWithOpacity50 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor.withOpacity(0.5),
      );

  static TextStyle get content14pxMediumWithHeight => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentBlackColor,
        height: 1.9.h,
      );
  static TextStyle get content12pxRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content12pxBold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content14pxMedium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content18pxMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content16pxMedium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content16pxBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get content14pxBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.contentBlackColor,
      );
  static TextStyle get onBoardingTitle24Bold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title12Regular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title18MBold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title12Bold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title20Medium => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title18Medium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.onBoardingTitleColor,
      );

  static TextStyle get title18Bold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title18Regular => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title14Medium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title14Bold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title14Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor,
        height: 1.8,
      );
  static TextStyle get title14RegularOpacity50 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor.withOpacity(0.5),
        height: 1.8,
      );
  static TextStyle get title14RegularUnderLine => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor,
        decoration: TextDecoration.underline,
      );
  static TextStyle get title16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title16Bold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get title16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.onBoardingTitleColor,
      );
  static TextStyle get primary14pxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryColor,
      );
  static TextStyle get primary12pxMedium => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      );
  static TextStyle get primary14pxBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      );
  static TextStyle get white16pxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      );
  static TextStyle get darkGrey16pxBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.darkGreyColor,
      );
  static TextStyle get darkGrey16pxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGreyColor,
      );

  static TextStyle get lightBlack14pxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightBlackColor,
      );

  static TextStyle get darkGrey14pxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey2,
      );
  static TextStyle get darkGrey12pxRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.darkGrey2,
      );

  static TextStyle get labelGrey14Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.labelGrey,
      );
  static TextStyle get labelGrey16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.labelGrey,
      );
  static TextStyle get lightBlack14Medium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBlackColor,
      );
  static TextStyle get lightBlack12Opacity50Regular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightBlackColor.withOpacity(0.5),
        decoration: TextDecoration.lineThrough,
        decorationColor: AppColors.lightBlackColor,
      );
  static TextStyle get lightBlack14Opacity50Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.lightBlackColor.withOpacity(0.5),
      );
  static TextStyle get lightBlack16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBlackColor,
      );
  static TextStyle get lightBlack16Bold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.lightBlackColor,
      );
  static TextStyle get greenColor18pxMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.greenColor,
      );
  static TextStyle get contentExpansion14Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentExpansionTileColor,
      );
  static TextStyle get contentExpansion16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.contentExpansionTileColor,
        height: 1.8,
      );
  static TextStyle get contentExpansion16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentExpansionTileColor,
        height: 1.8,
      );
  static TextStyle get contentExpansion14Medium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.contentExpansionTileColor,
      );
  static TextStyle get statusGrey57_16pxBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: const Color(0xff757575),
      );
  static TextStyle get positiveGreen16pxMedium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.positiveGreenColor,
      );
  static TextStyle get positiveGreen12pxRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.positiveGreenColor,
      );
  static TextStyle get positiveGreen14pxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.positiveGreenColor,
      );
  static TextStyle get babyBlue14pxMedium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.babyBlueColor,
      );

  static TextStyle get babyBlue16pxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.babyBlueColor,
      );
  static TextStyle get grey6161font16Regular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff616161),
      );
  static TextStyle get cancelRed16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.caneclRedColor,
      );
  static TextStyle get redNote14pxBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.redColorNote,
      );
  static TextStyle get calendarHeadtyle12Bold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: const Color(0xff6D6D6D),
      );
  static TextStyle get calendarDisabeled12Black => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor.withOpacity(0.5),
      );
  static TextStyle get black14Regular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      );
  static TextStyle get errorText => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.redColorNote,
      );
  static TextStyle get yellow16pxMedium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.yellowColor,
      );
  static TextStyle get black16Bold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      );
  static TextStyle get lightBlack3030_16Medium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBlack3030,
      );
  static TextStyle get lightBlack3030_16MediumOpacity => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBlack3030.withOpacity(0.5),
      );
}

double calculateSpacing(double em) {
  return 16 * em;
}
