import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class CheckInboxPage extends StatefulWidget {
  const CheckInboxPage({super.key});

  @override
  State<CheckInboxPage> createState() => _CheckInboxPageState();
}

class _CheckInboxPageState extends State<CheckInboxPage> {
  _navigationTimer() async {
    Timer(const Duration(seconds: 3), () async {
      context.router.popAndPush(const ResetPasswordRoute());
    });
  }

  @override
  void initState() {
    _navigationTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsHelper.backgroundImg2),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AssetsHelper.messageVector),
                    32.verticalSpace,
                    Text(
                      l10n.checkUrInbox,
                      style: AppStyles.title20Medium,
                    ),
                    16.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        l10n.weHaveSentEmailCheckItToResetPass,
                        style: AppStyles.title16Regular,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
