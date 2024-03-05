import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../domain/entities/news/news_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../demo/news.dart';
import 'data_source.dart';

final newsRemoteDataSourceProvider = Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements NewsDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<List<NewsEntity>>> load(ReqParam param) async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: NewsEntity.fromJson(res.data),
        data: getNewsList(length: 4),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<NewsEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<Pagination<NewsEntity>>> loadPage(ReqParam param) {
    // TODO: implement loadPage
    throw UnimplementedError();
  }
}
