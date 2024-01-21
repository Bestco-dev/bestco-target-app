import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/system/system.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/customer_data_source_impl.dart';

final systemsRepositoryProvider = Provider<LoadingRepository<SystemModel>>(
    (ref) => VisitsRepositoryImpl(SystemsDataSourceImpl()));

class VisitsRepositoryImpl extends LoadingRepository<SystemModel> {
  final LoadingResDataSource<SystemModel> _datasource;

  VisitsRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<List<SystemModel>>> load(ReqParam param) {
    return _datasource.load(param);
  }

  @override
  Future<ResponseState<SystemModel>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<SystemModel>>> loadPage(ReqParam param) {
    return _datasource.loadPage(param);
  }
}
