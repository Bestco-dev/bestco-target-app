import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/system/system.dart';
import 'base/resource.dart';

class SystemsDataSourceImpl extends LoadingResDataSource<SystemModel> {
  @override
  Future<ResponseState<List<SystemModel>>> load(ReqParam param) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<SystemModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<Pagination<SystemModel>>> loadPage(ReqParam param) {
    // TODO: implement loadPage
    throw UnimplementedError();
  }
  
}