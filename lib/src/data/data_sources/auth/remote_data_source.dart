import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../../domain/entities/user/user.dart';
import '../../demo/user.dart';
import 'auth_data_source.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSourceImplementer>(
  (ref) => AuthRemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class AuthRemoteDataSourceImplementer implements AuthDataSource {
  final Dio _client;
  AuthRemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<UserEntity>> doLogin(ReqParam param) async {
    try {
      final res = await _client.get("/products/1");
      return ResponseState.success(
        data: getUser(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<UserEntity>> loadInfo() async {
    try {
      final res = await _client.get("");
      return ResponseState.success(
        data: getUser(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<String>> refreshToken() async {
    try {
      final res = await _client.get("");
      return ResponseState.success(
        data: res.data,
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<UserEntity>> confirmVerificationCode(
      ReqParam param) async {
    try {
      final res =
          await _client.post("/confirm-verification-code", data: param.data);
      return ResponseState.success(
        data: getUser(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<bool>> forgetPassword(ReqParam param) async {
    try {
      final res = await _client.get("");
      return const ResponseState.success(
        data: true,
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<bool>> resetPassword(ReqParam param) async {
    try {
      final res = await _client.get("");
      return const ResponseState.success(
        data: true,
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<bool>> sendVerificationCode(ReqParam param) async {
    try {
      final res = await _client.get("");
      return const ResponseState.success(
        data: true,
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<UserEntity>> update(ReqParam param) async {
    try {
      // final res = await _client.post("/update", data: param.data);
      final res = await _client.get("");
      return ResponseState.success(
        data: getUser(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }
}
