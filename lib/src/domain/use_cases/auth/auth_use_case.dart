import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/auth_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/user/user.dart';
import '../../repositories/auth/auth_repo.dart';

final authUseCaseProvider = Provider<AuthUseCase>(
    (ref) => AuthUseCase(ref.read(authRepositoryProvider)));

class AuthUseCase implements AuthRepo {
  AuthRepo repo;
  AuthUseCase(this.repo);

  @override
  Future<ResponseState<UserEntity>> doLogin(ReqParam param) {
    return repo.doLogin(param);
  }

  @override
  Future<ResponseState<UserEntity>> confirmVerificationCode(ReqParam param) {
    return repo.confirmVerificationCode(param);
  }

  @override
  Future<ResponseState<bool>> forgetPassword(ReqParam param) {
    return repo.forgetPassword(param);
  }

  @override
  Future<ResponseState<UserEntity>> loadInfo() {
    return repo.loadInfo();
  }

  @override
  Future<ResponseState<String>> refreshToken() {
    return repo.refreshToken();
  }

  @override
  Future<ResponseState<bool>> resetPassword(ReqParam param) {
    return repo.resetPassword(param);
  }

  @override
  Future<ResponseState<bool>> sendVerificationCode(ReqParam param) {
    return repo.sendVerificationCode(param);
  }

  @override
  Future<ResponseState<UserEntity>> update(ReqParam param) {
    return repo.update(param);
  }

  @override
  Future<ResponseState<bool>> joinUs(ReqParam param) {
    return repo.joinUs(param);
  }
}
