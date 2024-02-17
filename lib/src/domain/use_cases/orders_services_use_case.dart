import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/orders_products/remote_data_source.dart';
import '../../data/data_sources/orders_service/remote_data_source.dart';
import '../../data/repositories/customers_repo_impl.dart';
import '../../presentation/custom_widgets/common/key_value_selection.dart';
import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/key_valu_option/key_value_option.dart';
import '../entities/order/order_entity.dart';
import '../entities/order_services/order_service_entity.dart';
import '../entities/question_entity/question_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/service_main/main_service_entity.dart';
import '../entities/service_sub/sub_service.dart';
import '../repositories/customers_repo.dart';
import '../repositories/orders_products_repo.dart';
import '../repositories/orders_service_repo.dart';

final ordersServiceRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(ordersServicesRemoteDataSourceProvider)));

class _UseCase implements OrdersServicesRepo {
  OrdersServicesRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<OrderServiceEntity>> create(ReqParam param) {
    return repo.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<OrderServiceEntity>>> load(ReqParam param) async {
    return repo.load(param);
  }

  @override
  Future<ResponseState<OrderServiceEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return repo.update(param);
  }

  @override
  Future<ResponseState<List<MainServiceEntity>>> loadMainService(
      ReqParam param) {
    return repo.loadMainService(param);
  }

  @override
  Future<ResponseState<List<QuestionEntity>>> loadQuestions(ReqParam param) {
    return repo.loadQuestions(param);
  }

  @override
  Future<ResponseState<List<SubServiceEntity>>> loadSubService(ReqParam param) {
    return repo.loadSubService(param);
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadServiceTypes(
      ReqParam param) {
    return repo.loadServiceTypes(param);
  }
}
