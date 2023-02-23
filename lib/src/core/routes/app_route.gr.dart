// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:rdna_delivery/src/features/authentication/login/presentation/pages/pages.dart'
    as _i2;
import 'package:rdna_delivery/src/features/authentication/reset-password/presentation/pages/pages.dart'
    as _i3;
import 'package:rdna_delivery/src/features/dashboard/presentation/pages/pages.dart'
    as _i4;
import 'package:rdna_delivery/src/features/home/presentation/pages/pages.dart'
    as _i5;
import 'package:rdna_delivery/src/features/notifications/presentation/pages/pages.dart'
    as _i7;
import 'package:rdna_delivery/src/features/order-list/presentation/pages/pages.dart'
    as _i6;
import 'package:rdna_delivery/src/features/splash_page/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: _i2.LoginPage(
          key: args.key,
          isBack: args.isBack,
        ),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.ForgetPasswordPage(),
      );
    },
    CheckInboxRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.CheckInboxPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i6.OrderListPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i8.AdaptivePage<void>(
        routeData: routeData,
        child: const _i7.NotificationsPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i8.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password-page',
        ),
        _i8.RouteConfig(
          CheckInboxRoute.name,
          path: '/check-inbox-page',
        ),
        _i8.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        ),
        _i8.RouteConfig(
          Dashboard.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: Dashboard.name,
            ),
            _i8.RouteConfig(
              OrderListRoute.name,
              path: 'order-list',
              parent: Dashboard.name,
            ),
            _i8.RouteConfig(
              NotificationsRoute.name,
              path: 'notifications',
              parent: Dashboard.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i9.Key? key,
    bool? isBack = false,
  }) : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(
            key: key,
            isBack: isBack,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isBack = false,
  });

  final _i9.Key? key;

  final bool? isBack;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isBack: $isBack}';
  }
}

/// generated route for
/// [_i3.ForgetPasswordPage]
class ForgetPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password-page',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i3.CheckInboxPage]
class CheckInboxRoute extends _i8.PageRouteInfo<void> {
  const CheckInboxRoute()
      : super(
          CheckInboxRoute.name,
          path: '/check-inbox-page',
        );

  static const String name = 'CheckInboxRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i8.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i8.PageRouteInfo<void> {
  const Dashboard({List<_i8.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.OrderListPage]
class OrderListRoute extends _i8.PageRouteInfo<void> {
  const OrderListRoute()
      : super(
          OrderListRoute.name,
          path: 'order-list',
        );

  static const String name = 'OrderListRoute';
}

/// generated route for
/// [_i7.NotificationsPage]
class NotificationsRoute extends _i8.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: 'notifications',
        );

  static const String name = 'NotificationsRoute';
}
