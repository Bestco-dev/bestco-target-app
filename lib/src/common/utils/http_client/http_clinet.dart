import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/response/response.dart';
import '../exception/network_exceptions/network_exceptions.dart';
import 'intercepter.dart';

final dioClientProvider = Provider<Dio>(
  (ref) {
    return Dio(
      BaseOptions(
        // baseUrl: 'https://www.qbill.app',
        baseUrl: 'https://dummyjson.com',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
        // contentType: "application/form-data",
        contentType: "application/json",
      ),
    )..interceptors.addAll([InterceptorImplementer(ref)]);
  },
);

// final httpClientProvider = Provider<HttpClient>((ref) {
//   return HttpClient(ref.read(dioClientProvider));
// });

enum HttpMethodType { get, post, put, delete }

class HttpClient {
  final Dio _dio;
  HttpClient(this._dio);

  Future<ResponseState> get(String uri,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      var response = await _dio.get(uri,
          queryParameters: queryParameters, options: options);
      return ResponseState.success(data: response.data);
    } catch (e, s) {
      return ResponseState.failure(error: NetworkExceptions.parse(e));
    }
  }

  Future<ResponseState> post(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      var response = await _dio.post(uri,
          data: data, queryParameters: queryParameters, options: options);
      return ResponseState.success(data: response.data);
    } catch (e, s) {
      return ResponseState.failure(error: NetworkExceptions.parse(e));
    }
  }

  Future<ResponseState> put(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      var response = await _dio.put(uri,
          data: data, queryParameters: queryParameters, options: options);
      return ResponseState.success(data: response.data);
    } catch (e, s) {
      return ResponseState.failure(error: NetworkExceptions.parse(e));
    }
  }

  Future<ResponseState> delete(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      var response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return ResponseState.success(data: response.data);
    } catch (e, s) {
      return ResponseState.failure(error: NetworkExceptions.parse(e));
    }
  }

  Future<ResponseState> test(String uri,
      {data, Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      var response = await _dio.put(uri,
          data: data, queryParameters: queryParameters, options: options);
      return ResponseState.success(data: response.data);
    } catch (e, s) {
      return ResponseState.failure(error: NetworkExceptions.parse(e));
    }
  }
}
