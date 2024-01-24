import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/product/product_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/salseperson/saleperson_entity.dart';
import '../../domain/repositories/products_repo.dart';
import '../../domain/repositories/saleperson_repo.dart';
import '../data_sources/prodcuts/data_source.dart';
import '../data_sources/prodcuts/remote_data_source.dart';
import '../data_sources/salepersons/data_source.dart';
import '../data_sources/salepersons/remote_data_source.dart';

final salepersonRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(salePersonsRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends SalepersonRepo {
  final SalepersonDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<SalePersonEntity>> create(ReqParam param) {
    return datasource.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<SalePersonEntity>>> load() async {
    return datasource.load();
  }

  @override
  Future<ResponseState<SalePersonEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return datasource.update(param);
  }
}
