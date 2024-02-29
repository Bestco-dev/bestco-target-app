import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_services/order_service_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/question_entity/question_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../../domain/entities/service_main/main_service_entity.dart';
import '../../../domain/entities/service_sub/sub_service.dart';
import '../../../presentation/custom_widgets/common/key_value_selection.dart';
import '../../demo/customers.dart';
import '../../demo/orders_service.dart';
import '../../demo/products.dart';
import '../../demo/question_demo.dart';
import '../../demo/services_main.dart';
import '../../demo/services_sub.dart';
import 'data_source.dart';

final ordersServicesRemoteDataSourceProvider =
    Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements OrdersServicesDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<OrderServiceEntity>> create(ReqParam param) async {
    try {
      final res = await _client.post(param.url, data: param.data);
      return ResponseState.success(
        // data: OrderServiceEntity.fromJson(param.data),
        data: getOrdersServices(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<OrderServiceEntity>>> load(ReqParam param) async {
    try {
      final res = await _client.get("/request/details");
      // final res = await _client.get(param.url);
      return ResponseState.success(
        data: (res.data as List)
            .map((e) => OrderServiceEntity.fromJson(e))
            .toList(),
        // data: getOrdersServiceList(),
      );
    } catch (e, err) {
      print("error happend..");
      print(err);
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<OrderServiceEntity>> loadOne(ReqParam param) {
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

  @override
  Future<ResponseState<List<MainServiceEntity>>> loadMainService(
      ReqParam param) async {
    try {
      final res = await _client.get("/services");
      return ResponseState.success(
        data: (res.data as List)
            .map((e) => MainServiceEntity.fromJson(e))
            .toList(),
        // data: getMainServiceList(),
      );
    } catch (e, er) {
      print(er);
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<QuestionEntity>>> loadQuestions(
      ReqParam param) async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List)
        //     .map((e) => OrderServiceEntity.fromJson(e))
        //     .toList(),
        data: getQuestionsList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<SubServiceEntity>>> loadSubService(
      ReqParam param) async {
    try {
      final res = await _client.get(param.url);
      return ResponseState.success(
        data: (res.data as List)
            .map((e) => SubServiceEntity.fromJson(e))
            .toList(),
        // data: getSubServiceList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<KeyValueOptionEntity>>> loadServiceTypes(
      ReqParam param) async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List)
        //     .map((e) => OrderServiceEntity.fromJson(e))
        //     .toList(),
        data: List.generate(5, (index) => getKeyOption()),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }
}
