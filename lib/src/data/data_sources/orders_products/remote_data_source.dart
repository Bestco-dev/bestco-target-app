import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../demo/customers.dart';
import '../../demo/orders_products.dart';
import '../../demo/products.dart';
import 'data_source.dart';

final ordersProductsRemoteDataSourceProvider =
    Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements OrdersProductsDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<OrderEntity>> create(ReqParam param) async {
    try {
      final res = await _client.post(
        "/order",
        data: param.data,
        // data: json.encode(param.data),
      );
      // final res = await _client.post("/create", data: param.data);
      return ResponseState.success(
        // data: getOrdersProducts(),
        data: OrderEntity.fromJson(res.data),
      );
    } catch (e, ee) {
      print(ee);
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<OrderEntity>>> load(ReqParam param) async {
    try {
      final res = await _client.get(param.url);
      return ResponseState.success(
        data: (res.data as List).map((e) => OrderEntity.fromJson(e)).toList(),
        // data: getOrdersProductsList(length: 2),
      );
    } catch (e, err) {
      print("home lan ....");
      print(err);
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<OrderEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) async {
    try {
      final res = await _client.get('', data: param.data);
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
}
