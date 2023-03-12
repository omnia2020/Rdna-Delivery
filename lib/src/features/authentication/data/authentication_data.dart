import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rdna_delivery/src/core/api/apis.dart';
import 'package:rdna_delivery/src/core/constants/app_constants.dart';
import 'package:rdna_delivery/src/core/helpers/session_manager.dart';
import 'package:rdna_delivery/src/features/authentication/models/models.dart';

class AuthenticationData {
  login({String? auth, String? password}) async {
    String? deviceToken = await sessionManager.getDeviceToken();
    var body = {
      AppConstants.deviceToken: deviceToken,
      'login_data': auth,
      'password': password,
    };
    log(body.toString());
    try {
      final response = await DioClient().dio.post('/login',
          data: body,
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            // 'app':'delivery',
            'requiresToken': false,
          }));
      return AppUser.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  showUser() async {
    try {
      final response = await DioClient().dio.get('/user/show',
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return AppUser.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  updateUserInfo({UserInfo? userInfo}) async {
    var body = {
      'email': userInfo?.email,
      'name': userInfo?.name,
      'phone_number': userInfo?.phoneNumber,
    };
    try {
      final response = await DioClient().dio.post('/user/update',
          data: body,
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return AppUser.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  logout() async {
    try {
      final response = await DioClient().dio.post('/logout',
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return LogoutModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  forgetPassword({String? email}) async {
    var body = {
      'email': email,
    };
    try {
      final response = await DioClient().dio.post('/password/forget',
          data: body,
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return LogoutModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  resetPassword({String? code, String? pass, String? confirmPass}) async {
    var body = {
      'forget_code': code,
      'new_password': pass,
      'new_confirm_password': confirmPass,
    };
    try {
      final response = await DioClient().dio.post('/password/reset',
          data: body,
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return LogoutModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data;
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  //////////Acivity Management//////////////////////
  userStartSession() async {
    try {
      final response = await DioClient().dio.get('/start/session',
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return UserActiveModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }

  userEndSession() async {
    try {
      final response = await DioClient().dio.get('/end/session',
          options: Options(followRedirects: false, headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          }));
      return UserActiveModel.fromJson(response.data);
    } on DioError catch (err) {
      throw err.response?.data['message'];
    } catch (e) {
      if (kDebugMode) print(e);
      throw e.toString();
    }
  }
}
