import 'package:dio/dio.dart';
import 'dart:io'; // عشان SocketException

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with API server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate error");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response?.statusCode ?? 0, dioError.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error occurred");
      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServerFailure("No Internet Connection");
        } else {
          return ServerFailure("Unexpected error. Please try again later!");
        }
      // ignore: unreachable_switch_default
      default:
        return ServerFailure(
            "Oops! There was an error, please try again later!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic badResponse) {
    if (badResponse == null) {
      return ServerFailure("No response body");
    }

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(badResponse['error']?['message'] ?? "Unknown error");
    } else if (statusCode == 404) {
      return ServerFailure(
          "Requested resource not found, please try again later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error, please try again later!");
    } else {
      return ServerFailure("Oops! There was an error, please try again later!");
    }
  }
}
