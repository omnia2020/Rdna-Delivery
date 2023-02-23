import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/helpers/assets_helper.dart';
import 'package:rdna_delivery/src/core/routes/app_route.dart';
import 'package:rdna_delivery/src/core/routes/app_route.gr.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  GlobalKey bottomNavigationBarKey = GlobalKey(debugLabel: 'btm_app_bar');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        const HomeRoute(),
        const HomeRoute(),
        // const OrderListRoute(),
        //const NotificationsRoute(),
        // const AccountSettingRouter(),
      ],
      animationCurve: Curves.fastLinearToSlowEaseIn,
      bottomNavigationBuilder: (_, tabsRouter) => InkWell(
        onDoubleTap: () {
          tabsRouter.stackRouterOfIndex(tabsRouter.activeIndex)?.popUntilRoot();
        },
        child: WillPopScope(
          onWillPop: () async {
            if (tabsRouter.activeIndex != 0) {
              BottomNavigationBar navigationBar =
                  bottomNavigationBarKey.currentWidget as BottomNavigationBar;
              navigationBar.onTap!(0);
            } else {
              showDialog(
                context: context,
                builder: (context2) => const CloseAlertDialog(),
              );
            }
            return false;
          },
          child: BottomNavyBar(
            curve: Curves.linear,
            key: bottomNavigationBarKey,
            selectedIndex: tabsRouter.activeIndex,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            showElevation: true,
            onItemSelected: (index) {
              tabsRouter.setActiveIndex(index);
            },
            itemCornerRadius: 12.r,
            backgroundColor: AppColors.whiteColor,
            items: [
              BottomNavyBarItem(
                icon: tabsRouter.activeIndex == 0
                    ? SvgPicture.asset(
                        AssetsHelper.activeDashboardIcon,
                        color: AppColors.onBoardingTitleColor,
                      )
                    : SvgPicture.asset(
                        AssetsHelper.dashboardIcon,
                        color: AppColors.onBoardingTitleColor.withOpacity(0.5),
                      ),
                title: Text(
                  l10n.dashboard,
                  style: AppStyles.title14Medium,
                ),
                activeColor: AppColors.yellowColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: tabsRouter.activeIndex == 1
                    ? SvgPicture.asset(
                        AssetsHelper.orderLstIcon,
                        color: AppColors.onBoardingTitleColor,
                      )
                    : SvgPicture.asset(
                        AssetsHelper.orderLstIcon,
                        color: AppColors.onBoardingTitleColor.withOpacity(0.5),
                      ),
                textAlign: TextAlign.center,
                title: Text(
                  l10n.ordersList,
                  style: AppStyles.title14Medium,
                ),
                activeColor: AppColors.yellowColor,
              ),
              BottomNavyBarItem(
                icon: tabsRouter.activeIndex == 2
                    ? SvgPicture.asset(
                        AssetsHelper.activeNotificationIcon,
                        color: AppColors.onBoardingTitleColor,
                      )
                    : SvgPicture.asset(
                        AssetsHelper.notificationIcon,
                        color: AppColors.onBoardingTitleColor.withOpacity(0.5),
                      ),
                title: Text(
                  l10n.notifications,
                  style: AppStyles.title14Medium,
                ),
                textAlign: TextAlign.center,
                activeColor: AppColors.yellowColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
