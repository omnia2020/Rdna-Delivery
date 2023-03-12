import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rdna_delivery/src/core/api/apis.dart';
import 'package:rdna_delivery/src/features/notifications/models/models.dart';

class NotificationApi {
  Future<NotificationModel> listAllNotifications({int?page}) async {
    try {
      final response = await DioClient().dio.get('/notifications?page=$page',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return NotificationModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  Future<NotificationModel> readAllNotifications() async {
    try {
      final response = await DioClient().dio.get('/notifications/read',
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return NotificationModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
