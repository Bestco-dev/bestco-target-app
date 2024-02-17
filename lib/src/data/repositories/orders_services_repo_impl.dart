import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/key_valu_option/key_value_option.dart';
import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/order_services/order_service_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/question_entity/question_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/service_main/main_service_entity.dart';
import '../../domain/entities/service_sub/sub_service.dart';
import '../../domain/repositories/orders_products_repo.dart';
import '../../domain/repositories/orders_service_repo.dart';
import '../../domain/repositories/products_repo.dart';
import '../../presentation/custom_widgets/common/key_value_selection.dart';
import '../data_sources/orders_products/data_source.dart';
import '../data_sources/orders_products/remote_data_source.dart';
import '../data_sources/orders_service/data_source.dart';
import '../data_sources/orders_service/remote_data_source.dart';
import '../data_sources/prodcuts/data_source.dart';
import '../data_sources/prodcuts/remote_data_source.dart';

final ordersProductsRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(ordersServicesRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends OrdersServicesRepo {
  final OrdersServicesDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<OrderServiceEntity>> create(ReqParam param) {
    return datasource.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<OrderServiceEntity>>> load(ReqParam param) async {
    return datasource.load(param);
  }

  @override
  Future<ResponseState<OrderServiceEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return datasource.update(param);
  }

  @override
  Future<ResponseState<List<MainServiceEntity>>> loadMainService(ReqParam param) {
    return datasource.loadMainService(param);
  }

  @override
  Future<ResponseState<List<QuestionEntity>>> loadQuestions(ReqParam param) {
    return datasource.loadQuestions(param);
  }

  @override
  Future<ResponseState<List<SubServiceEntity>>> loadSubService(ReqParam param) {
    return datasource.loadSubService(param);
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadServiceTypes(ReqParam param) {
    return datasource.loadServiceTypes(param);
  }
}
