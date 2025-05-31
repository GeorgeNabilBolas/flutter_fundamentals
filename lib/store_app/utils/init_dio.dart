import 'dart:developer';

import 'package:dio/dio.dart';

Dio initDio() {
  Dio dio = Dio();
  addDioOptions(dio);

  return dio;
}

InterceptorsWrapper dioInterceptors() {
  return InterceptorsWrapper(
    onRequest: onRequest,
    onResponse: onResponse,
    onError: onError,
  );
}

void onError(DioException e, handler) {
  log('Error: ${e.message}');
}

void onResponse(response, handler) {
  log('Response: ${response.statusCode}\nData: ${response.data}');
}

void onRequest(options, handler) {
  log('Request: ${options.method}\nPath: ${options.path}');
}

BaseOptions addDioOptions(Dio dio) {
  return dio.options
    ..connectTimeout = const Duration(seconds: 2)
    ..receiveTimeout = const Duration(seconds: 2)
    ..sendTimeout = const Duration(seconds: 2);
}
