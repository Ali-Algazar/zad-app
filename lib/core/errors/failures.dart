import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout. Please try again later.');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout. Please try again later.');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout. Please try again later.');
      case DioExceptionType.badResponse:
        return ServerFailure(
          'Server error: ${error.response?.statusCode} - ${error.response?.data}',
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled. Please try again.');
      case DioExceptionType.unknown:
      default:
        return ServerFailure('Network error: ${error.message}');
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}
