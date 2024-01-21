import '../../common/res/numbers.dart';
import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../common/utils/pagination/parser.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/system/system.dart';
import '../demo/systems.dart';
import 'base/resource.dart';

class SystemsDataSourceImpl extends LoadingResDataSource<SystemModel> {
  @override
  Future<ResponseState<List<SystemModel>>> load(ReqParam param) async {
    try {
      await 5.delay();
      final clients = getSystems(length: 4);
      return ResponseState<List<SystemModel>>.success(data: clients);
    } catch (e) {
      return ResponseState<List<SystemModel>>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<SystemModel>> loadOne(ReqParam param) async {
    try {
      await 3.delay();
      final client = getSystem();
      return ResponseState<SystemModel>.success(data: client);
    } catch (e) {
      return ResponseState<SystemModel>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<Pagination<SystemModel>>> loadPage(ReqParam param) async {

    try {
      await 3.delay();
      final data = mockSystemDataResponse(length: 4);
      // final data = [];

      final parser = PaginationParser<SystemModel>();
      final page = await parser.parseList(data, SystemModel.fromJson);
      return ResponseState<Pagination<SystemModel>>.success(data: page!);
    } catch (e) {

      return ResponseState<Pagination<SystemModel>>.failure(error: NetworkExceptions.parse(e));
    }
  }
}
