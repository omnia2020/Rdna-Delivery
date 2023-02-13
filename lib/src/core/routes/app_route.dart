import 'package:auto_route/annotations.dart';
import 'package:rdna_delivery/src/features/splash_page/splash_page.dart';
export 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}
