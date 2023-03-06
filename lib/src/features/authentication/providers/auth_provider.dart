import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:rdna_delivery/src/core/helpers/session_manager.dart';
import 'package:rdna_delivery/src/core/widgets/app_toast.dart';
import 'package:rdna_delivery/src/features/authentication/data/authentication_data.dart';
import 'package:rdna_delivery/src/features/authentication/models/models.dart';

class AuthProvider extends ChangeNotifier {
  bool _showLoading = false;
  bool get showLoading => _showLoading;

  AppUser? _appUser;
  AppUser? get appUser => _appUser;

  login({String? auth, String? pass}) async {
    try {
      _showLoading = true;
      notifyListeners();
      _appUser = await AuthenticationData().login(auth: auth, password: pass);
      notifyListeners();
      await saveUserSession();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  updateUserInfo({UserInfo? userInfo}) async {
    bool status = false;
    try {
      _showLoading = true;
      notifyListeners();
      _appUser = await AuthenticationData().updateUserInfo(userInfo: userInfo);
      notifyListeners();
      status = true;
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      status = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
    return status;
  }

  showUserInfo() async {
    try {
      _appUser = await AuthenticationData().showUser();
      notifyListeners();
      await sessionManager.setAciveStatus(
          status: _appUser?.userInfo?.status ?? 'inactive');
    } catch (e) {
      await resetUserSession();
      log(e.toString());
    }
  }

  LogoutModel? _logoutModel;
  LogoutModel? get logoutModel => _logoutModel;

  logout() async {
    try {
      _showLoading = true;
      notifyListeners();
      _logoutModel = await AuthenticationData().logout();
      notifyListeners();
      await resetUserSession();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  forgetPassword({String? email}) async {
    bool status = false;
    try {
      _showLoading = true;
      notifyListeners();
      await AuthenticationData().forgetPassword(email: email);
      notifyListeners();
      status = true;
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      status = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
    return status;
  }

  resetPassword({String? code, String? pass, String? confirmPass}) async {
    bool status = false;
    try {
      _showLoading = true;
      notifyListeners();
      await AuthenticationData()
          .resetPassword(code: code, confirmPass: confirmPass, pass: pass);
      notifyListeners();
      status = true;
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      status = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
    return status;
  }

  ///////////////User Acivity Management////////////////
  UserActiveModel? _userActiveModel;
  UserActiveModel? get userActiveModel => _userActiveModel;

  userStartSession() async {
    _userActiveModel = null;
    try {
      _showLoading = true;
      notifyListeners();
      _userActiveModel = await AuthenticationData().userStartSession();
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  userEndSession() async {
    _userActiveModel = null;
    try {
      _showLoading = true;
      notifyListeners();
      _userActiveModel = await AuthenticationData().userEndSession();
      notifyListeners();
      _showLoading = false;
      notifyListeners();
    } catch (e) {
      _showLoading = false;
      notifyListeners();
      AppToast.errorToast(e.toString());
    }
  }

  saveUserSession() async {
    await sessionManager.setToken(tokenn: appUser?.token);
    await sessionManager.setAciveStatus(
        status: appUser?.userInfo?.status ?? 'inactive');
  }

  resetUserSession() async {
    await sessionManager.setToken(tokenn: '');
    _appUser = null;
    notifyListeners();
  }
}
