import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rdna_delivery/src/core/api/apis.dart';
import 'package:rdna_delivery/src/features/order-list/models/models.dart';

class DeliveryOrdersApi {
  Future<DeliveryOrdersModel> listAllDeliveryOrders(int page) async {
    try {
      final response =
          await DioClient().dio.get('/assigned/delivery/order/page=$page',
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: 'application/json',
              }));
      return DeliveryOrdersModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
