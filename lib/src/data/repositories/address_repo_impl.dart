import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/address/address.dart';
import '../../domain/entities/key_valu_option/key_value_option.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/address_repo.dart';
import '../data_sources/address/data_source.dart';
import '../data_sources/address/remote_data_source.dart';

final addressRemoteRepositoryProvider = Provider<CustomersRepositoryImpl>(
  (ref) => CustomersRepositoryImpl(
    ref.read(addressRemoteDataSourceProvider),
  ),
);

class CustomersRepositoryImpl extends AddressRepo {
  final AddressDataSource datasource;

  CustomersRepositoryImpl(this.datasource);

  @override
  Future<ResponseState<AddressModel>> create(ReqParam param) {
    return datasource.create(param);
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    return datasource.delete(param);
  }

  @override
  Future<ResponseState<List<AddressModel>>> load() async {
    return datasource.load();
  }

  @override
  Future<ResponseState<AddressModel>> loadOne(ReqParam param) {
    return datasource.loadOne(param);
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return datasource.update(param);
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadOptions(
      ReqParam param) {
    return datasource.loadOptions(param);
  }
}
