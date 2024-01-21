
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/kpi/kpi.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import 'base/resource.dart';

class KipsDataSourceImpl extends LoadingResDataSource<KpiModel> {
  @override
  Future<ResponseState<List<KpiModel>>> load(ReqParam param) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<KpiModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<Pagination<KpiModel>>> loadPage(ReqParam param) {
    // TODO: implement loadPage
    throw UnimplementedError();
  }
}