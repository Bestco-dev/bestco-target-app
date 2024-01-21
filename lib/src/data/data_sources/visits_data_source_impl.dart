import '../../common/res/numbers.dart';
import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../common/utils/pagination/parser.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visit/visit.dart';
import '../demo/visits.dart';
import 'base/resource.dart';

class VisitsDataSourceImpl extends LoadingResDataSource<VisitModel> {
  @override
  Future<ResponseState<List<VisitModel>>> load(ReqParam param) async {
    try {
      await 5.delay();
      final visits = getVisitList(length: 2);
      return ResponseState<List<VisitModel>>.success(data: visits);
    } catch (e) {
      return ResponseState<List<VisitModel>>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<VisitModel>> loadOne(ReqParam param) async {
    try {
      await 5.delay();
      final visit = getVisit();
      return ResponseState<VisitModel>.success(data: visit);
    } catch (e) {
      return ResponseState<VisitModel>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<Pagination<VisitModel>>> loadPage(ReqParam param) async {
    try {
      await 3.delay();
      final data = mockVisitsDataResponse();
      final parser = PaginationParser<VisitModel>();
      final page = await parser.parse(data, VisitModel.fromJson);
      return ResponseState<Pagination<VisitModel>>.success(data: page!);
    } catch (e) {
      return ResponseState<Pagination<VisitModel>>.failure(error: NetworkExceptions.parse(e));
    }
  }
}
