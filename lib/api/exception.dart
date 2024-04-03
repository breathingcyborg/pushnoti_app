import 'package:dio/dio.dart';


class ApiException implements Exception {

  final String message;
  final List<String>? messages;
  final String? code;
  final int? statusCode;

  const ApiException({
    required this.message,
    this.statusCode,
    this.messages,
    this.code,
  });

  factory ApiException.fromDioException(DioException exception) {
    assert(exception.type == DioExceptionType.badResponse,
        "ApiException is only for badResponse dio exception");

    String message = 'Something went wrong';
    List<String>? messages;
    String? code;
    int? statusCode = exception.response?.statusCode;

    if (exception.response?.data == null) {
      return ApiException(
        message: message,
        statusCode: statusCode,
      );
    }

    Map<String, dynamic> response = exception.response!.data;

    if (response['message'] is String) {
      message = response['message'];
    }

    if (response['message'] is List) {
      messages = List<String>.from(response['message']);
    }

    if (response['code'] is String) {
      code = response['code'];
    }

    return ApiException(
      message: message,
      messages: messages,
      code: code,
      statusCode: statusCode,
    );
  }

}

class NetworkException implements Exception {
  final DioException exception;
  final String message;

  const NetworkException({
    required this.exception,
    this.message = 'Network Error',
  });
}

dynamic createApiException(DioException error) {
  if (error.type == DioExceptionType.badResponse) {
    return ApiException.fromDioException(error);
  }
  return NetworkException(exception: error);
}


String getErrorMessage(DioException error) {
  var apiException = createApiException(error);
  var message = 'Something Went Wrong';
  if (apiException is ApiException) {
    if (apiException.messages?.isNotEmpty ?? false) {
      message = apiException.messages?.join('\n') ?? message;
    }
  }
  if (apiException is NetworkException) {
    message = apiException.message;
  }
  return message;
}