import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/products_repo.dart';
import '../data_sources/prodcuts/data_source.dart';
import '../data_sources/prodcuts/remote_data_source.dart';

final productsRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(productsRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends ProductsRepo {
  final ProductsDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<ProductEntity>> create(ReqParam param) {
    return datasource.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<ProductEntity>>> load() async {
    return datasource.load();
  }

  @override
  Future<ResponseState<ProductEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return datasource.update(param);
  }
}
