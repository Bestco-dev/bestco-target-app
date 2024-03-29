import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import 'data_source.dart';

final customersRemoteDataSourceProvider =
    Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements CustomersDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<CustomerEntity>> create(ReqParam param) async {
    try {
      final res = await _client.post(param.url, data: param.data);
      return ResponseState.success(
        data: CustomerEntity.fromJson(res.data),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
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
    try {
      final res = await _client.get("/customers");

      return ResponseState.success(
        data:
            (res.data as List).map((e) => CustomerEntity.fromJson(e)).toList(),
        // data: getCustomerList(length: 5),
      );
    } catch (e,goo) {

      print(goo);
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<CustomerEntity>> loadOne(ReqParam param) {
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
  Future<ResponseState<bool>> updateAddress(ReqParam param) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
