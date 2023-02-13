import 'package:dio/dio.dart';

class AppException with _$AppException {
  factory AppException({
    required String message,
    int? statusCode,
    Map<String, dynamic>? errors,
  }) {
    throw UnimplementedError();
  }

  factory AppException.fromDioError(DioError e) {
    if (e.response?.statusCode == 422 || e.response?.statusCode == 401) {
      final errors = e.response?.data['errors'];
      if (errors != null && errors is Map) {
        return AppException(
          message: e.response?.data['message'],
          errors: Map<String, dynamic>.from(errors),
          statusCode: 422,
        );
      } else if (e.response?.data['message'] != null) {
        return AppException(message: e.response?.data['message']);
      } else {
        return AppException(message: e.message);
      }
    } else if (e.response?.statusCode == 400 || e.response?.statusCode == 403) {
      return AppException(
          message: e.response?.data['message'] ?? 'Unauthorized');
    } else {
      return AppException(message: e.message);
    }
  }
}

class _$AppException {}
