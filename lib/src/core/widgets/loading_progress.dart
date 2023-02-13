import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';

class LoadingProgrss extends StatelessWidget {
  const LoadingProgrss({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: AppColors.primaryColor,
        color: AppColors.yellowColor,
      ),
    );
  }
}
