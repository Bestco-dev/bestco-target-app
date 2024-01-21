import '../../common/utils/pagination/pagination/pagination.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import 'base.dart';

abstract class LoadRepository<T> extends BaseRepository<T> {
  Future<ResponseState<List<T>>> load(ReqParam param);
}

abstract class LoadOneRepository<T> extends BaseRepository<T> {
  Future<ResponseState<T>> loadOne(ReqParam param);
}

abstract class LoadPageRepository<T> extends BaseRepository<T> {
  Future<ResponseState<Pagination<T>>> loadPage(ReqParam param);
}

abstract class DeleteRepository<T> extends BaseRepository<T> {
  Future<ResponseState<T>> delete(ReqParam param);
}
abstract class CreateRepository<T> extends BaseRepository<T> {
  Future<ResponseState<T>> create(ReqParam param);
}

abstract class UpdateRepository<T> extends BaseRepository<T> {
  Future<ResponseState<T>> update(ReqParam param);
}

abstract class UpdateLoadOneRepository<T>
    implements LoadOneRepository<T>, UpdateRepository<T> {}

abstract class ResourceRepository<T>
    implements
        LoadRepository<T>,
        LoadOneRepository<T>,
        DeleteRepository<T>,
        LoadPageRepository<T>,
        UpdateRepository<T> {}

abstract class PaginationRepository<T>
    implements LoadPageRepository<T>, LoadOneRepository<T> {}


abstract class CreateUpdateRepository<T>
    implements CreateRepository<T>, UpdateRepository<T> {}

abstract class LoadingRepository<T>
    implements
        LoadRepository<T>,
        LoadOneRepository<T>,
        LoadPageRepository<T> {}