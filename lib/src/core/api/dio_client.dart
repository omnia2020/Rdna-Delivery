import 'package:dio/dio.dart';
import 'package:rdna_delivery/src/core/api/apis.dart';
import 'package:rdna_delivery/src/core/constants/app_constants.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiBaseUrl,
            connectTimeout: 30000,
            receiveTimeout: 30000,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);
  late final Dio dio;
}
