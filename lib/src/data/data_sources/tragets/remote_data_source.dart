import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../../domain/entities/target/target_entity.dart';
import '../../../domain/repositories/products_repo.dart';
import '../../demo/targets.dart';
import 'data_source.dart';

final targetsRemoteDataSourceProvider = Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements TargetsDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<List<TargetEntity>>> load() async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List).map((e) => ProductEntity.fromJson(e)).toList(),
        data: getTargetsList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<TargetEntity>> loadActive(ReqParam param) async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List).map((e) => ProductEntity.fromJson(e)).toList(),
        data: getTarget(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }
}
