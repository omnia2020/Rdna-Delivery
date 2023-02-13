import 'package:equatable/equatable.dart';

class ApiResponse<T> extends Equatable {
  const ApiResponse({required this.data, required this.message, this.errors});
  final T data;
  final String message;
  final Object? errors;
  @override
  List<Object?> get props => [data, message, errors];
}
