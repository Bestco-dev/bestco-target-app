import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';

abstract class BaseUseCase<T> {
  Future<ResponseState<T>> call(ReqParam param);
}
