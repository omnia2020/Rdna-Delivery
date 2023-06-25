import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rdna_delivery/l10n/l10n.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/core/widgets/widgets.dart';
import 'package:rdna_delivery/src/features/notifications/presentation/providers/notification_provider.dart';
import 'package:rdna_delivery/src/features/notifications/widgets/widgets.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  ScrollController? scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    readNotfications();
    setState(() {});
    super.initState();
  }

  readNotfications() async {
    await Provider.of<NotificationProvider>(context, listen: false)
        .readAllNotifications();
  }

  loadMoreNotifications() {
    scrollController?.addListener(() {
      var nextPageTrigger = 0.8 * scrollController!.position.maxScrollExtent;
      if (scrollController!.position.pixels > nextPageTrigger) {
        Provider.of<NotificationProvider>(context, listen: false)
            .loadMoreNotifications();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    loadMoreNotifications();
    final l10n = context.l10n;
    return ScaffoldWrapper(
      backgroundColor: AppColors.whiteColor,
      appBar: TransparentAppBar(
        title: Text(l10n.notifications, style: AppStyles.title18Medium),
        backButton: const SizedBox(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Provider.of<NotificationProvider>(context, listen: false)
              .reset();
          setState(() {});
        },
        child: SafeArea(
          child: Consumer<NotificationProvider>(
            builder: (_, state, __) {
              if (state.loading) {
                return const Center(
                  child: LoadingProgrss(),
                );
              } else {
                if (state.notificationData!.isNotEmpty) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.notificationData?.length ?? 0,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              final notify = state.notificationData?[index];
                              return Padding(
                                padding:
                                    EdgeInsets.only(bottom: 16.h, top: 12.h),
                                child:
                                    NotificationTile(notificationData: notify),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Divider(
                                color:
                                    AppColors.borderGreyColor.withOpacity(0.2),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 2),
                    child: Container(
                      child: Text(
                        l10n.noNotificationFound,
                        style: AppStyles.redNote14pxBold,
                      ),
                    ),
                  );
                }
              }
            },
          ),
        ),
      ),
    );
  }
}
