import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/orders_products_repo.dart';
import '../../domain/repositories/products_repo.dart';
import '../data_sources/orders_products/data_source.dart';
import '../data_sources/orders_products/remote_data_source.dart';
import '../data_sources/prodcuts/data_source.dart';
import '../data_sources/prodcuts/remote_data_source.dart';

final ordersProductsRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(ordersProductsRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends OrdersProductsRepo {
  final OrdersProductsDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<OrderEntity>> create(ReqParam param) {
    return datasource.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<OrderEntity>>> load(ReqParam param) async {
    return datasource.load(param);
  }

  @override
  Future<ResponseState<OrderEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return datasource.update(param);
  }
}
