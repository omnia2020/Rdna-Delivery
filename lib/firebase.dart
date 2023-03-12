import 'dart:convert';
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rdna_delivery/firebase_options.dart';
import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'src/core/helpers/local_notification_service.dart';
import 'src/core/helpers/session_manager.dart';
import 'src/features/notifications/models/models.dart';

/// Firebase Services instance Here
class _Firebase {
  FirebaseMessaging? _firebaseMessaging;

  init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    _firebaseMessaging = FirebaseMessaging.instance;
    await getDeviceToken();
    firebaseCloudMessagingListeners();
  }

  getDeviceToken() async {
    _firebaseMessaging?.getToken().then((token) async {
      await sessionManager.setDeviceToken(tokenn: token);

      log(token!.toString());
      log(token.length.toString());
    });
  }

  void firebaseCloudMessagingListeners() async {
    await registerNotification();
    FirebaseMessaging.onMessage.listen(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  registerNotification() async {
    _firebaseMessaging = FirebaseMessaging.instance;
    NotificationSettings settings = await _firebaseMessaging!.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
        PushNotificationModel? notification = PushNotificationModel(
          title: message?.notification?.title,
          body: message?.notification?.body,
        );
        showSimpleNotification(
          Text(
            notification.title ?? '',
            style: AppStyles.title16Medium,
          ),
          subtitle: Text(
            notification.body ?? '',
            style: AppStyles.title14Regular,
          ),
          background: AppColors.yellowColor,
          duration: const Duration(seconds: 6),
          autoDismiss: true,
          slideDismissDirection: DismissDirection.startToEnd,
        );
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }

  Future _firebaseMessagingBackgroundHandler(RemoteMessage? message) async {
    if (message?.notification != null) {
      String enTitle = message?.notification?.title ?? '';
      String enBody = message?.notification?.body ?? '';
      LocalNotificationService().cancelAllNotifications();
      LocalNotificationService().showNotifications(
          code: message.hashCode,
          title: enTitle,
          body: enBody,
          payload: jsonEncode(message?.data));
    }
  }

  FirebaseMessaging? get messaging => _firebaseMessaging;
}

final _Firebase firebase = _Firebase();
