import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/authentication/providers/auth_provider.dart';
import 'package:rdna_delivery/src/features/home/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/notifications/presentation/providers/notification_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  init() async {
    await Provider.of<NotificationProvider>(context, listen: false)
        .listAllNotifications();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScaffoldWrapper(
      body: Consumer<AuthProvider>(
        builder: (_, authState, __) {
          if (authState.showLoading) {
            return const Center(
              child: LoadingProgrss(),
            );
          } else {
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      32.verticalSpace,
                      WelcomeRichText(
                          text: authState.appUser?.userInfo?.name ?? ''),
                      4.verticalSpace,
                      Text(
                        l10n.welcomeToDeliveryApp,
                        style: AppStyles.darkGrey16pxRegular,
                      ),
                      24.verticalSpace,
                      Text(
                        l10n.yourStatus,
                        style: AppStyles.title14Regular,
                      ),
                      8.verticalSpace,
                      const UserToggleStatus(),
                      24.verticalSpace,
                      // Text(l10n.overview),
                      // 8.verticalSpace,
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     OverviewCard(
                      //       title: l10n.respondTime,
                      //       color: AppColors.blueColor,
                      //       number: 475,
                      //     ),
                      //     OverviewCard(
                      //       title: l10n.gotReady,
                      //       color: AppColors.mintGreenColor,
                      //       number: 300,
                      //     ),
                      //     OverviewCard(
                      //       title: l10n.orderMissed,
                      //       color: AppColors.brownColor,
                      //       number: 422,
                      //     ),
                      //   ],
                      // ),
                      // 32.verticalSpace,
                      // Text(l10n.currentMonth),
                      // 12.verticalSpace,
                      // const MonthKpisCard(
                      //   backgroundColor: AppColors.lightYellowColor,
                      //   kpi: '6.005',
                      //   monthName: 'May',
                      //   status: 'increased',
                      //   isCurrent: true,
                      // ),
                      // 24.verticalSpace,
                      // Text(l10n.lastMonthKpi),
                      // 15.verticalSpace,
                      // SizedBox(
                      //   height: 200.h,
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     itemCount: 6,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (_, index) {
                      //       return Padding(
                      //         padding: EdgeInsets.only(right: 8.w, left: 8.w),
                      //         child: const MonthKpisCard(
                      //           backgroundColor: AppColors.whiteColor,
                      //           kpi: '6.005',
                      //           monthName: 'April',
                      //           status: 'increased',
                      //           isCurrent: false,
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                      // 24.verticalSpace,
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
