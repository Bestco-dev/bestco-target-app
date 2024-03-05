import '../entities/key_valu_option/key_value_option.dart';
import '../entities/order_services/order_service_entity.dart';
import '../entities/question_entity/question_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/service_main/main_service_entity.dart';
import '../entities/service_sub/sub_service.dart';

abstract class OrdersServicesRepo {
  Future<ResponseState<List<OrderServiceEntity>>> load(ReqParam param);
  Future<ResponseState<OrderServiceEntity>> loadOne(ReqParam param);
  Future<ResponseState<OrderServiceEntity>> create(ReqParam param);
  Future<ResponseState<bool>> update(ReqParam param);
  Future<ResponseState<bool>> delete(ReqParam param);
  Future<ResponseState<List<MainServiceEntity>>> loadMainService(
      ReqParam param);
  Future<ResponseState<List<SubServiceEntity>>> loadSubService(ReqParam param);
  Future<ResponseState<List<QuestionEntity>>> loadQuestions(ReqParam param);
  Future<ResponseState<List<KeyValueOptionEntity>>> loadServiceTypes(
      ReqParam param);
}
