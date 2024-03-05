import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/orders_products/remote_data_source.dart';
import '../entities/order/order_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/orders_products_repo.dart';

final ordersProductsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(ordersProductsRemoteDataSourceProvider)));

class _UseCase implements OrdersProductsRepo {
  OrdersProductsRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<OrderEntity>> create(ReqParam param) {
    return repo.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<OrderEntity>>> load(ReqParam param) async {
    return repo.load(param);
  }

  @override
  Future<ResponseState<OrderEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return repo.update(param);
  }
}
