import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/invoice_entity/invoice_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../demo/invoices.dart';
import '../../demo/visits.dart';
import 'data_source.dart';

final visitsRemoteDataSourceProvider = Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements VisitsDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<VisitEntity>> create(ReqParam param) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<VisitEntity>>> load() async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List).map((e) => ProductEntity.fromJson(e)).toList(),
        data: getVisitsList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<VisitEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
