import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../data/repositories/news_repo_impl.dart';
import '../entities/news/news_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../repositories/resource.dart';

final newsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(newsRemoteRepositoryProvider)));

class _UseCase implements LoadingRepository<NewsEntity> {
  LoadingRepository<NewsEntity> repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<List<NewsEntity>>> load(ReqParam param) {
    return repo.load(param);
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
