import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/salseperson/saleperson_entity.dart';

abstract class SalepersonRepo {
  Future<ResponseState<List<SalePersonEntity>>> load();
  Future<ResponseState<SalePersonEntity>> loadOne(ReqParam param);
  Future<ResponseState<SalePersonEntity>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
}
