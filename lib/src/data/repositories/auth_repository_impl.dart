import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/repositories/auth/auth_repo.dart';
import '../data_sources/auth/auth_data_source.dart';
import '../data_sources/auth/remote_data_source.dart';

final authRepositoryProvider = Provider<AuthRepositoryImpl>(
    (ref) => AuthRepositoryImpl(ref.read(authRemoteDataSourceProvider)));

class AuthRepositoryImpl extends AuthRepo {
  final AuthDataSource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  Future<ResponseState<UserEntity>> doLogin(ReqParam param) {
    return datasource.doLogin(param);
  }

  @override
  Future<ResponseState<UserEntity>> confirmVerificationCode(ReqParam param) {
    // TODO: implement confirmVerificationCode
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> forgetPassword(ReqParam param) {
    return datasource.forgetPassword(param);
  }

  @override
  Future<ResponseState<UserEntity>> loadInfo() {
    return datasource.loadInfo();
  }

  @override
  Future<ResponseState<String>> refreshToken() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> resetPassword(ReqParam param) {
    return datasource.resetPassword(param);
  }

  @override
  Future<ResponseState<bool>> sendVerificationCode(ReqParam param) {
    return datasource.sendVerificationCode(param);
  }

  @override
  Future<ResponseState<UserEntity>> update(ReqParam param) {
    return datasource.update(param);
  }

  @override
  Future<ResponseState<bool>> joinUs(ReqParam param) {
    return datasource.joinUs(param);
  }
}
