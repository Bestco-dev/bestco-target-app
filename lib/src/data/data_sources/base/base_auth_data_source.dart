import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';

abstract class BaseAuthDatasource<T> {
  Future<ResponseState<T>> doLogin(ReqParam param);

  Future<ResponseState<T>> changePassword(ReqParam param);
}
