import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class AppToast {
  static successToast(String msg) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.positiveGreenColor,
      textColor: AppColors.whiteColor,
      fontSize: 16.0.sp,
    );
  }

  static errorToast(String msg) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.redColorNote,
      textColor: AppColors.whiteColor,
      fontSize: 16.0.sp,
    );
  }

  static infoToast(String msg) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.yellowColor,
      textColor: AppColors.whiteColor,
      fontSize: 16.0.sp,
    );
  }
}
