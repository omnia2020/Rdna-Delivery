import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:rdna_delivery/src/features/authentication/login/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/authentication/reset-password/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/dashboard/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/home/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/notifications/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/order-list/presentation/pages/pages.dart';
import 'package:rdna_delivery/src/features/order_details/pages/pages.dart';
import 'package:rdna_delivery/src/features/order_items/pages/pages.dart';
import 'package:rdna_delivery/src/features/splash_page/splash_page.dart';
export 'package:auto_route/auto_route.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: SplashPage, initial: true),
    AutoRoute<void>(page: LoginPage),
    AutoRoute<void>(page: ForgetPasswordPage),
    AutoRoute<void>(page: CheckInboxPage),
    AutoRoute<void>(page: ResetPasswordPage),
    AutoRoute<void>(
      page: DashboardPage,
      path: '/',
      name: 'Dashboard',
      children: [
        AutoRoute<void>(
          page: HomePage,
          path: 'home',
          name: 'HomeRoute',
        ),
        AutoRoute<void>(
          page: EmptyRouterPage,
          path: 'order-list',
          name: 'OrderListRouter',
          children: [
            AutoRoute(
              path: '',
              page: OrderListPage,
            ),
            AutoRoute(
              path: 'order-details',
              page: OrderDetailsPage,
            ),
            AutoRoute(
              path: 'order-items',
              page: OrderItemsPage,
            ),
          ],
        ),
        AutoRoute<void>(
          page: NotificationsPage,
          path: 'notifications',
          name: 'NotificationsRoute',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
