import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      final method = options.method;
      final path = options.uri.toString();
      final headers = jsonEncode(options.headers);
      final query = jsonEncode(options.queryParameters);
      final data = options.data != null ? jsonEncode(options.data) : 'null';

      log('--- HTTP REQUEST ---');
      log('METHOD: $method');
      log('URL: $path');
      log('HEADERS: $headers');
      log('QUERY: $query');
      log('BODY: $data');
      log('-------------------');
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      final status = response.statusCode;
      final path = response.requestOptions.uri.toString();
      final data = response.data != null
          ? const JsonEncoder.withIndent('  ').convert(response.data)
          : 'null';

      log('--- HTTP RESPONSE ---');
      log('STATUS: $status');
      log('URL: $path');
      log('DATA: $data');
      log('--------------------');
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      final path = err.requestOptions.uri.toString();
      final status = err.response?.statusCode;
      final message = err.message;
      final data = err.response?.data != null
          ? const JsonEncoder.withIndent('  ').convert(err.response?.data)
          : 'null';

      log('--- HTTP ERROR ---');
      log('STATUS: $status');
      log('URL: $path');
      log('MESSAGE: $message');
      log('DATA: $data');
      log('STACKTRACE: ${err.stackTrace}');
      log('------------------');
    }

    handler.next(err);
  }
}
