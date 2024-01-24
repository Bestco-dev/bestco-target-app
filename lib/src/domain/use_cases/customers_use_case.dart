import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/customers_repo_impl.dart';
import '../entities/address/address.dart';
import '../entities/customer/customer.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/customers_repo.dart';

final customersRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(customersRemoteRepositoryProvider)));

class _UseCase implements CustomersRepo {
  CustomersRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<CustomerEntity>> create(ReqParam param) {
    return repo.create(param);
  }

  @override
  Future<ResponseState<AddressModel>> createAddress(ReqParam param) {
    // TODO: implement createAddress
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> deleteAddress(ReqParam param) {
    // TODO: implement deleteAddress
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<CustomerEntity>>> load() async {
    return repo.load();
  }

  @override
  Future<ResponseState<CustomerEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
   return repo.update(param);
  }

  @override
  Future<ResponseState<bool>> updateAddress(ReqParam param) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
