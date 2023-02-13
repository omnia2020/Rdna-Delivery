import 'package:dio/dio.dart';
import 'package:rdna_delivery/src/core/helpers/session_manager.dart';

// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.
class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await sessionManager.getToken();
    options.headers['Authorization'] = 'Bearer $token';

    // if (_needAuthorizationHeader(options)) {
    //   // adds the access-token with the header
    //   options.headers['Authorization'] = 'Bearer $token';
    // }
    // continue with the request
    super.onRequest(options, handler);
  }

  // bool _needAuthorizationHeader(RequestOptions options) {
  //   if (options.method == 'GET') {
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }
}
