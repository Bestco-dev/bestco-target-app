import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/address_repo_impl.dart';
import '../entities/address/address.dart';
import '../entities/key_valu_option/key_value_option.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/address_repo.dart';

final addressRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(addressRemoteRepositoryProvider)));

class _UseCase implements AddressRepo {
  AddressRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<AddressModel>> create(ReqParam param) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<AddressModel>>> load() {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<AddressModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadOptions(
      ReqParam param) {
    return repo.loadOptions(param);
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    return repo.update(param);
  }
}
