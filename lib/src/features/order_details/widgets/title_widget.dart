import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: AppStyles.content16pxMedium,
    );
  }
}
