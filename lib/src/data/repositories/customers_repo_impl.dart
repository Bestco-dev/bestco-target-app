import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/address/address.dart';
import '../../domain/entities/customer/customer.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/customers_repo.dart';
import '../data_sources/customers/data_source.dart';
import '../data_sources/customers/remote_data_source.dart';

final customersRemoteRepositoryProvider = Provider<CustomersRepositoryImpl>(
  (ref) => CustomersRepositoryImpl(
    ref.read(customersRemoteDataSourceProvider),
  ),
);

class CustomersRepositoryImpl extends CustomersRepo {
  final CustomersDataSource datasource;

  CustomersRepositoryImpl(this.datasource);

  @override
  Future<ResponseState<CustomerEntity>> create(ReqParam param) {
    // TODO: implement create
    throw UnimplementedError();
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
    return datasource.load();
  }

  @override
  Future<ResponseState<CustomerEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> updateAddress(ReqParam param) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
