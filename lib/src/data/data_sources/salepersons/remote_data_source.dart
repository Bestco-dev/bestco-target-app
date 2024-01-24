import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../demo/salepersons.dart';
import 'data_source.dart';

final salePersonsRemoteDataSourceProvider = Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements SalepersonDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);
  @override
  Future<ResponseState<SalePersonEntity>> create(ReqParam param) async {
    try {
      final res = await _client.get("");
      return ResponseState.success(
        data: SalePersonEntity.fromJson(param.data),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<List<SalePersonEntity>>> load() async {
    try {
      final res = await _client.get("");
      return ResponseState.success(
        data: getSalepersonsList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<SalePersonEntity>> loadOne(ReqParam param) {
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
