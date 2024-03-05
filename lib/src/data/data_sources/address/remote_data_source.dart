import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../demo/customers.dart';
import 'data_source.dart';

final addressRemoteDataSourceProvider =
    Provider<AddressRemoteDataSourceImplementer>(
  (ref) => AddressRemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class AddressRemoteDataSourceImplementer implements AddressDataSource {
  final Dio _client;
  AddressRemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<AddressModel>> create(ReqParam param) async {
    try {
      final res = await _client.post(param.url, data: param.data);
      return ResponseState.success(
        data: AddressModel.fromJson(param.data),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<AddressModel>>> load() async {
    try {
      final res = await _client.get("");
      return ResponseState.success(
        data: List.generate(4, (index) => getAddress()),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<AddressModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) async {
    try {
      final res = await _client.put(param.url, data: param.data);
      return const ResponseState.success(data: true);
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadOptions(
      ReqParam param) async {
    try {
      final res = await _client.get(param.url);
      return ResponseState.success(
        data: (res.data as List)
            .map((e) => KeyValueOptionEntity.fromJson(e))
            .toList(),
        // data: List.generate(4, (index) => getKeyOption()),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }
}
