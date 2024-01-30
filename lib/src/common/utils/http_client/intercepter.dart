import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../exception/network_exceptions/network_exceptions.dart';
import 'token_provider.dart';

class InterceptorImplementer implements Interceptor {
  ProviderRef ref;
  InterceptorImplementer(this.ref);
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final error = NetworkExceptions.parse(err);
    log("Error:", error: "$error - ${error.message}", name: "DioException");
    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = ref.read(authTokenProvider).getToken;
    if (token != null) {
      options.headers.addAll({
        'Authorization': "Bearer $token",
      });
    }

    options.data =
        json.encode(options.data); //encode data before sending to data
    log("[${options.method}] - ${options.baseUrl}${options.path}", name: "Request url");
    log("${options.headers}", name: "Request header");
    log("${options.data}", name: "Request data");
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log("status code:${response.statusCode}", name: "Response");
    log("body :${response.data}", name: "Response");

    return handler.next(response);
  }
}
