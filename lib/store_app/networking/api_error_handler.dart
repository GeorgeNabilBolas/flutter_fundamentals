import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/store_app/models/failure_model.dart';

class ApiErrorHandler {
  static FailureModel handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return FailureModel(
            title: 'Connection Timeout',
            subtitle: 'The request took too long to complete. Please try again later.',
            icon: Icons.timer_off,
            statusCode: null,
          );
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode;
          // Safely handle the response data
          String message;
          if (error.response?.data is Map<String, dynamic>) {
            message = error.response?.data['message'] ?? 'An error occurred on the server.';
          } else if (error.response?.data is String) {
            message = error.response?.data as String;
          } else {
            message = 'An error occurred on the server.';
          }
          if (statusCode == 404) {
            return FailureModel(
              title: 'Endpoint Not Found',
              subtitle: 'The requested endpoint does not exist. Please check the URL.',
              icon: Icons.broken_image,
              statusCode: statusCode,
            );
          }
          return FailureModel(
            title: 'Server Error',
            subtitle: message,
            icon: Icons.error,
            statusCode: statusCode,
          );
        case DioExceptionType.cancel:
          return FailureModel(
            title: 'Request Cancelled',
            subtitle: 'The request was cancelled. Please try again.',
            icon: Icons.cancel,
            statusCode: null,
          );
        case DioExceptionType.connectionError:
          return FailureModel(
            title: 'No Internet',
            subtitle: 'Please check your internet connection and try again.',
            icon: Icons.wifi_off,
            statusCode: null,
          );
        default:
          return FailureModel(
            title: 'Unexpected Error',
            subtitle: 'An unexpected error occurred. Please try again.',
            icon: Icons.error_outline,
            statusCode: null,
          );
      }
    }
    return FailureModel(
      title: 'Unknown Error',
      subtitle: error.toString(),
      icon: Icons.error_outline,
      statusCode: null,
    );
  }
}
