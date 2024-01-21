import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import 'base.dart';

abstract class LoadResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<List<T>>> load(ReqParam param);
}

abstract class LoadPageResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<Pagination<T>>> loadPage(ReqParam param);
}

abstract class LoadOneResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<T>> loadOne(ReqParam param);
}

  abstract class CreateResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<T>> create(ReqParam param);
}

abstract class DeleteResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<T>> delete(ReqParam param);
}

abstract class UpdateResDatasource<T> extends BaseDatasource<T> {
  Future<ResponseState<T>> update(ReqParam param);
}

abstract class ResourceDatasource<T>
    implements
        LoadResDatasource<T>,
        LoadPageResDatasource<T>,
        LoadOneResDatasource<T>,
        DeleteResDatasource<T>,
        UpdateResDatasource<T> {}

abstract class PaginationDatasource<T>
    implements
        LoadResDatasource<T>,
        LoadOneResDatasource<T>,
        LoadPageResDatasource<T> {}

abstract class CreateLoadOneDatasource<T>
    implements CreateResDatasource<T>, LoadOneResDatasource<T> {}

abstract class CreateUpdateDatasource<T>
    implements CreateResDatasource<T>, UpdateResDatasource<T> {}



abstract class UpdateLoadOneResDatasource<T>
    implements
        LoadOneResDatasource<T>,
        UpdateResDatasource<T> {}

abstract class LoadingResDataSource<T>
    implements
        LoadOneResDatasource<T>,
        LoadResDatasource<T>,
        LoadPageResDatasource<T> {}
