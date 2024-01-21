import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/kpi/kpi.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/kips_data_source_impl.dart';

final kpisRepositoryProvider = Provider<LoadingRepository<KpiModel>>(
    (ref) => KpisRepositoryImpl(KipsDataSourceImpl()));

class KpisRepositoryImpl extends LoadingRepository<KpiModel> {
  final LoadingResDataSource<KpiModel> _datasource;

  KpisRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<List<KpiModel>>> load(ReqParam param) {
    return _datasource.load(param);
  }

  @override
  Future<ResponseState<KpiModel>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<KpiModel>>> loadPage(ReqParam param) {
    return _datasource.loadPage(param);
  }
}
