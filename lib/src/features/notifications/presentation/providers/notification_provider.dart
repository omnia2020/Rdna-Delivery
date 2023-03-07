import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/features/notifications/data/notification_api.dart';
import 'package:rdna_delivery/src/features/notifications/models/models.dart';

class NotificationProvider extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  NotificationModel? _notificationModel;
  NotificationModel? get notificationModel => _notificationModel;

  int _totalNotifications = 0;
  int get totalNotifications => _totalNotifications;

  List<NotificationData>? _notificationData = [];
  List<NotificationData>? get notificationData => _notificationData;

  listAllNotifications() async {
    try {
      _loading = true;
      notifyListeners();
      _notificationModel =
          await NotificationApi().listAllNotifications(page: 1);
      _loading = false;
      notifyListeners();
      _notificationData?.addAll(_notificationModel!.data!.notificationData!);
      notifyListeners();
      countUnReadNotifications();
    } catch (e) {
      _loading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  int _currentPage = 1;
  int get currentPage => _currentPage;
  set currentPage(int currentPage) {
    _currentPage = currentPage;
    //  notifyListeners();
  }

  int lastPage = 0;
  bool _loadMore = true;
  bool get loadMore => _loadMore;
  set loadMore(bool loadMore) {
    _loadMore = loadMore;
    //notifyListeners();
  }

  loadMoreNotifications() async {
    try {
      if (loadMore) {
        lastPage = notificationModel?.data?.lastPage ?? 1;
        currentPage += 1;
        if (currentPage <= lastPage) {
          _notificationModel =
              await NotificationApi().listAllNotifications(page: currentPage);
          notifyListeners();
          _notificationData
              ?.addAll(_notificationModel!.data!.notificationData!);
          loadMore = true;
          notifyListeners();
        } else {
          loadMore = false;
          notifyListeners();
        }
      }
    } catch (e) {
      loadMore = false;
      AppToast.errorToast(e.toString());
    }
  }

  countUnReadNotifications() {
    _totalNotifications = 0;
    notifyListeners();
    if (notificationModel != null) {
      _totalNotifications = notificationModel?.data?.countUnread ?? 0;
    }
    notifyListeners();
  }

  readAllNotifications() async {
    try {
      _loading = true;
      _notificationModel = await NotificationApi().readAllNotifications();
      _loading = false;
      notifyListeners();
      _notificationData?.addAll(_notificationModel!.data!.notificationData!);
      notifyListeners();
      countUnReadNotifications();
      notifyListeners();
    } catch (e) {
      _loading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  reset() async {
    _notificationModel = null;
    _notificationData = [];
    loadMore = true;
    currentPage = 1;
    lastPage = 1;
    listAllNotifications();
  }
}
