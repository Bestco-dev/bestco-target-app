import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/prodcuts/remote_data_source.dart';
import '../../data/repositories/customers_repo_impl.dart';
import '../../data/repositories/targets_repo_impl.dart';
import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/product/product_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/target/target_entity.dart';
import '../repositories/customers_repo.dart';
import '../repositories/products_repo.dart';
import '../repositories/target_repo.dart';

final productsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(targetsRemoteRepositoryProvider)));

class _UseCase implements TargetsRepo {
  TargetsRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<List<TargetEntity>>> load() {
    return repo.load();
  }

  @override
  Future<ResponseState<TargetEntity>> loadActive(ReqParam param) {
    return repo.loadActive(param);
  }
}
