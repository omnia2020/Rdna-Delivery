import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _navigationTimer();
    super.initState();
  }

  _navigationTimer() async {
    Timer(const Duration(seconds: 3), () async {
      context.router.popAndPush(LoginRoute());
    });
  }

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
