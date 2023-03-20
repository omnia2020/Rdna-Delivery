import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/helpers/session_manager.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String userToken = '';
  @override
  void initState() {
    getToken();
    _navigationTimer();
    super.initState();
  }

  getToken() async {
    userToken = await sessionManager.getToken();
    log(userToken);
  }

  initUser() async {
    await Provider.of<AuthProvider>(context, listen: false).showUserInfo();
  }

  _navigationTimer() async {
    Timer(const Duration(seconds: 3), () async {
      try {
        await initUser();
      } catch (e) {
        await Provider.of<AuthProvider>(context, listen: false)
            .resetUserSession();
        context.router.popAndPush(LoginRoute());
      }
      if (userToken != '') {
        log(userToken);
        context.router.popAndPush(const Dashboard());
      } else {
        await Provider.of<AuthProvider>(context, listen: false)
            .resetUserSession();
        context.router.popAndPush(LoginRoute());
      }
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
