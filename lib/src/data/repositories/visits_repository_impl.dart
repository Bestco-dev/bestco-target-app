import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visit/visit.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/visits_data_source_impl.dart';

final visitsRepositoryProvider = Provider<LoadingRepository<VisitModel>>(
    (ref) => VisitsRepositoryImpl(VisitsDataSourceImpl()));

class VisitsRepositoryImpl extends LoadingRepository<VisitModel> {
  final LoadingResDataSource<VisitModel> _datasource;

  VisitsRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<List<VisitModel>>> load(ReqParam param) {
    return _datasource.load(param);
  }

  @override
  Future<ResponseState<VisitModel>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<VisitModel>>> loadPage(ReqParam param) {
    return _datasource.loadPage(param);
  }


}
