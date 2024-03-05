import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/prodcuts/remote_data_source.dart';
import '../entities/product/product_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/products_repo.dart';

final productsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(productsRemoteDataSourceProvider)));

class _UseCase implements ProductsRepo {
  ProductsRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<ProductEntity>> create(ReqParam param) {
    return repo.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<ProductEntity>>> load() async {
    return repo.load();
  }

  @override
  Future<ResponseState<ProductEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return repo.update(param);
  }
}
