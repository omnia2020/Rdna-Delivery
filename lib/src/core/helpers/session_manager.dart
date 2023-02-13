import 'package:shared_preferences/shared_preferences.dart';

class _SessionManager {
  final String loginStatus = 'status';
  final String token = 'token';
  final String deviceToken = 'device-token';

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

  Future<void> setLoggedStatus({bool? status}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(loginStatus, status!);
  }

  Future<bool> getLoggedStatus() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool authStatus;
    authStatus = pref.getBool(loginStatus) ?? false;
    return authStatus;
  }
}

final _SessionManager sessionManager = _SessionManager();
