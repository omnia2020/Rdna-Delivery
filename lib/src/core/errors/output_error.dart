import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class OutputError extends StatelessWidget {
  const OutputError({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    //   final l10n = context.l10n;
    return Container(
      //alignment: Alignment.center,
      //  height: 100.h,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'an error occured',
            style: AppStyles.errorText,
          ),
          5.verticalSpace,
          Text(
            errorMessage,
            style: AppStyles.primary14pxRegular,
          ),
        ],
      ),
    );
  }
}
