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
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:auto_route/empty_router_widgets.dart' as _i7;
import 'package:flutter/material.dart' as _i15;
import 'package:rdna_delivery/src/features/account_setting/pages/pages.dart'
    as _i12;
import 'package:rdna_delivery/src/features/authentication/login/presentation/pages/pages.dart'
    as _i2;
import 'package:rdna_delivery/src/features/authentication/reset-password/presentation/pages/pages.dart'
    as _i3;
import 'package:rdna_delivery/src/features/dashboard/presentation/pages/pages.dart'
    as _i4;
import 'package:rdna_delivery/src/features/home/presentation/pages/pages.dart'
    as _i6;
import 'package:rdna_delivery/src/features/notifications/presentation/pages/pages.dart'
    as _i8;
import 'package:rdna_delivery/src/features/order-list/presentation/pages/pages.dart'
    as _i9;
import 'package:rdna_delivery/src/features/order_details/pages/pages.dart'
    as _i10;
import 'package:rdna_delivery/src/features/order_items/pages/pages.dart'
    as _i11;
import 'package:rdna_delivery/src/features/profile/presentation/pages/pages.dart'
    as _i13;
import 'package:rdna_delivery/src/features/report_order/pages/pages.dart'
    as _i5;
import 'package:rdna_delivery/src/features/splash_page/splash_page.dart' as _i1;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: _i2.LoginPage(
          key: args.key,
          isBack: args.isBack,
        ),
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.ForgetPasswordPage(),
      );
    },
    CheckInboxRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.CheckInboxPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.ResetPasswordPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    ReportOrderRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i5.ReportOrderPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    OrderListRouter.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i8.NotificationsPage(),
      );
    },
    AccountSettingRouter.name: (routeData) {
      return _i14.AdaptivePage<void>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    OrderListRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.OrderListPage(),
      );
    },
    OrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteArgs>();
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i10.OrderDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    OrderItemsRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.OrderItemsPage(),
      );
    },
    AccountSettingRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i12.AccountSettingPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i14.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i13.ProfilePage(),
      );
    },
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i14.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i14.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password-page',
        ),
        _i14.RouteConfig(
          CheckInboxRoute.name,
          path: '/check-inbox-page',
        ),
        _i14.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        ),
        _i14.RouteConfig(
          Dashboard.name,
          path: '/',
          children: [
            _i14.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: Dashboard.name,
            ),
            _i14.RouteConfig(
              OrderListRouter.name,
              path: 'order-list',
              parent: Dashboard.name,
              children: [
                _i14.RouteConfig(
                  OrderListRoute.name,
                  path: '',
                  parent: OrderListRouter.name,
                ),
                _i14.RouteConfig(
                  OrderDetailsRoute.name,
                  path: 'order-details',
                  parent: OrderListRouter.name,
                ),
                _i14.RouteConfig(
                  OrderItemsRoute.name,
                  path: 'order-items',
                  parent: OrderListRouter.name,
                ),
              ],
            ),
            _i14.RouteConfig(
              NotificationsRoute.name,
              path: 'notifications',
              parent: Dashboard.name,
            ),
            _i14.RouteConfig(
              AccountSettingRouter.name,
              path: 'account-setting',
              parent: Dashboard.name,
              children: [
                _i14.RouteConfig(
                  AccountSettingRoute.name,
                  path: '',
                  parent: AccountSettingRouter.name,
                ),
                _i14.RouteConfig(
                  ProfileRoute.name,
                  path: 'profile',
                  parent: AccountSettingRouter.name,
                ),
              ],
            ),
          ],
        ),
        _i14.RouteConfig(
          ReportOrderRoute.name,
          path: '/report-order-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i14.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i15.Key? key,
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

  final _i15.Key? key;

  final bool? isBack;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isBack: $isBack}';
  }
}

/// generated route for
/// [_i3.ForgetPasswordPage]
class ForgetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password-page',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i3.CheckInboxPage]
class CheckInboxRoute extends _i14.PageRouteInfo<void> {
  const CheckInboxRoute()
      : super(
          CheckInboxRoute.name,
          path: '/check-inbox-page',
        );

  static const String name = 'CheckInboxRoute';
}

/// generated route for
/// [_i3.ResetPasswordPage]
class ResetPasswordRoute extends _i14.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password-page',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i14.PageRouteInfo<void> {
  const Dashboard({List<_i14.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Dashboard';
}

/// generated route for
/// [_i5.ReportOrderPage]
class ReportOrderRoute extends _i14.PageRouteInfo<void> {
  const ReportOrderRoute()
      : super(
          ReportOrderRoute.name,
          path: '/report-order-page',
        );

  static const String name = 'ReportOrderRoute';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class OrderListRouter extends _i14.PageRouteInfo<void> {
  const OrderListRouter({List<_i14.PageRouteInfo>? children})
      : super(
          OrderListRouter.name,
          path: 'order-list',
          initialChildren: children,
        );

  static const String name = 'OrderListRouter';
}

/// generated route for
/// [_i8.NotificationsPage]
class NotificationsRoute extends _i14.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(
          NotificationsRoute.name,
          path: 'notifications',
        );

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i7.EmptyRouterPage]
class AccountSettingRouter extends _i14.PageRouteInfo<void> {
  const AccountSettingRouter({List<_i14.PageRouteInfo>? children})
      : super(
          AccountSettingRouter.name,
          path: 'account-setting',
          initialChildren: children,
        );

  static const String name = 'AccountSettingRouter';
}

/// generated route for
/// [_i9.OrderListPage]
class OrderListRoute extends _i14.PageRouteInfo<void> {
  const OrderListRoute()
      : super(
          OrderListRoute.name,
          path: '',
        );

  static const String name = 'OrderListRoute';
}

/// generated route for
/// [_i10.OrderDetailsPage]
class OrderDetailsRoute extends _i14.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i15.Key? key,
    required int id,
  }) : super(
          OrderDetailsRoute.name,
          path: 'order-details',
          args: OrderDetailsRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'OrderDetailsRoute';
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i15.Key? key;

  final int id;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i11.OrderItemsPage]
class OrderItemsRoute extends _i14.PageRouteInfo<void> {
  const OrderItemsRoute()
      : super(
          OrderItemsRoute.name,
          path: 'order-items',
        );

  static const String name = 'OrderItemsRoute';
}

/// generated route for
/// [_i12.AccountSettingPage]
class AccountSettingRoute extends _i14.PageRouteInfo<void> {
  const AccountSettingRoute()
      : super(
          AccountSettingRoute.name,
          path: '',
        );

  static const String name = 'AccountSettingRoute';
}

/// generated route for
/// [_i13.ProfilePage]
class ProfileRoute extends _i14.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
