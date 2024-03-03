import '../entities/product/product_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/target/target_entity.dart';

abstract class TargetsRepo {
  Future<ResponseState<List<TargetEntity>>> load();

  Future<ResponseState<TargetEntity>> loadActive(ReqParam param);
}
