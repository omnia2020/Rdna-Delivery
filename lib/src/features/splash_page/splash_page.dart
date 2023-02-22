import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          SvgPicture.asset(
            AssetsHelper.splashImg,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Center(
            child: SvgPicture.asset(
              AssetsHelper.logo,
            ),
          ),
        ],
      ),
    );
  }
}
