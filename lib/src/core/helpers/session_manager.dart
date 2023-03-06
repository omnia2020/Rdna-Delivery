import 'package:rdna_delivery/src/core/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String token = 'token';
  final String deviceToken = 'device-token';
  final String activeStatus = 'active-status';

  Future<void> setToken({String? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(token, tokenn!);
  }

  Future<String> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tokenn;
    tokenn = pref.getString(token) ?? '';
    return tokenn;
  }

  Future<void> setDeviceToken({String? tokenn}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(deviceToken, tokenn!);
  }

  Future<String> getDeviceToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String tokenn;
    tokenn = pref.getString(deviceToken) ?? '';
    return tokenn;
  }

  Future<void> setAciveStatus({String? status}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(activeStatus, status ?? AppConstants.userStatus[1].status!);
  }

  Future<String> getActiveStatus() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String status;
    status = pref.getString(activeStatus) ?? AppConstants.userStatus[1].status!;
    return status;
  }
}

final _SessionManager sessionManager = _SessionManager();
