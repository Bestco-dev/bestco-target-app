import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/user/user.dart';

abstract class AuthRepo {
  Future<ResponseState<UserEntity>> loadInfo();
  Future<ResponseState<UserEntity>> doLogin(ReqParam param);
  Future<ResponseState<bool>> forgetPassword(ReqParam param);
  Future<ResponseState<bool>> sendVerificationCode(ReqParam param);
  Future<ResponseState<UserEntity>> confirmVerificationCode(ReqParam param);
  Future<ResponseState<bool>> resetPassword(ReqParam param);
  Future<ResponseState<UserEntity>> update(ReqParam param);
  Future<ResponseState<bool>> joinUs(ReqParam param);
  Future<ResponseState<String>> refreshToken();
}
