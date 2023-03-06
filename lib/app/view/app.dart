import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/generated/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';

class App extends StatelessWidget {
  App({super.key});
  final router = GetIt.instance<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: AppColors.whiteColor,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          // minTextAdapt: true,
          builder: (_, __) => MaterialApp.router(
            routerDelegate: router.delegate(),
            routeInformationParser: router.defaultRouteParser(),
            title: 'RDNA-Delivery',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        ),
      ),
    );
  }
}
