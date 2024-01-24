import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/prodcuts/remote_data_source.dart';
import '../../data/data_sources/salepersons/remote_data_source.dart';
import '../../data/repositories/customers_repo_impl.dart';
import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/product/product_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/salseperson/saleperson_entity.dart';
import '../repositories/customers_repo.dart';
import '../repositories/products_repo.dart';
import '../repositories/saleperson_repo.dart';

final salepersonsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(salePersonsRemoteDataSourceProvider)));

class _UseCase implements SalepersonRepo {
  SalepersonRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<SalePersonEntity>> create(ReqParam param) {
    return repo.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<SalePersonEntity>>> load() async {
    return repo.load();
  }

  @override
  Future<ResponseState<SalePersonEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return repo.update(param);
  }
}
