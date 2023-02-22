import 'package:rdna_delivery/l10n/generated/l10n.dart';

class FormValidator {
  static String? passwordValidator(String password, AppLocalizations l10n) {
    if (password.length == 0) {
      return l10n.yourPasswordIsRequired;
    } else if (password.length < 6) {
      return l10n.yourPassIstooShort;
    }
    return null;
  }

  static String? mailPhoneValidator(String field, AppLocalizations l10n) {
    if (field.length == 0) {
      return l10n.fieldIsRequired;
    }
    return null;
  }

  static String? emailValidator(String email, AppLocalizations l10n) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    if (!email.contains(RegExp(p))) {
      return l10n.yourEmailIsInvalid;
    }
    return null;
  }

  static String? fieldEmptyValidator(String? name, AppLocalizations l10n) {
    if (name == null || name.isEmpty) {
      return l10n.fieldIsRequired;
    }
    return null;
  }

  static String? validateMobile(String value, AppLocalizations l10n) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,11}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return l10n.pleaseEnterPhoneNumber;
    } else if (!regExp.hasMatch(value)) {
      return l10n.yourPhoneIsInvalid;
    }
    return null;
  }
}
