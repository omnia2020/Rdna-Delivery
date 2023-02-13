import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(InternetConnectionChecker checker) : _checker = checker;

  final InternetConnectionChecker _checker;

  @override
  Future<bool> get isConnected => _checker.hasConnection;
}
