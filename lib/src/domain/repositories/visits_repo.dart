import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/visits/visits_entity.dart';

abstract class VisitsRepo {
  Future<ResponseState<List<VisitEntity>>> load();

  Future<ResponseState<VisitEntity>> loadOne(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
  Future<ResponseState<VisitEntity>> create(ReqParam param);
  // Future<ResponseState<bool>> make(ReqParam param);
}
