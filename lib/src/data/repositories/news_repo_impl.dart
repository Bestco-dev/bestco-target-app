import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/news/news_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/news/remote_data_source.dart';

final newsRemoteRepositoryProvider = Provider<CustomersRepositoryImpl>(
  (ref) => CustomersRepositoryImpl(
    ref.read(newsRemoteDataSourceProvider),
  ),
);

class CustomersRepositoryImpl extends LoadingRepository<NewsEntity> {
  final LoadingRepository<NewsEntity> datasource;
  CustomersRepositoryImpl(this.datasource);

  @override
  Future<ResponseState<List<NewsEntity>>> load(ReqParam param) {
    return datasource.load(param);
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
