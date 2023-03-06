import 'package:rdna_delivery/src/core/themes/themes.dart';
import 'package:rdna_delivery/src/features/home/models/models.dart';

class AppConstants {
  const AppConstants._();
  static const String apiBaseUrl =
      'https://rdna-backend.theplanet.tech/api/v1/team';
  static const String sessionToken = 'session-token';
  static const String accessToken = 'access-token';
  static const String refreshToken = 'refresh-token';
  static const String expiryTime = 'expiry-time';
  static const String defaultLocale = 'default-locale';
  static const String userId = 'userId';
  static const String hashUser = 'user_hash';
  static const String deviceToken = 'device_token';
  static List<UserStatus> userStatus = [
    UserStatus(
      id: 1,
      status: 'Active',
      statusColor: AppColors.positiveGreenColor,
    ),
    UserStatus(
      id: 2,
      status: 'Inactive',
      statusColor: AppColors.invisibleColor,
    ),
  ];
}
