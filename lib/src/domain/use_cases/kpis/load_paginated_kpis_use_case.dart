import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../data/repositories/kips_repository_impl.dart';
import '../../entities/kpi/kpi.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadPaginatedKpisUseCase = Provider<BaseUseCase<Pagination<KpiModel>>>(
    (ref) => PaginatedKpisUseCase(ref.read(kpisRepositoryProvider)));

class PaginatedKpisUseCase extends BaseUseCase<Pagination<KpiModel>> {
  final LoadPageRepository<KpiModel> _repository;

  PaginatedKpisUseCase(this._repository);

  @override
  Future<ResponseState<Pagination<KpiModel>>> call(ReqParam param) {
    return _repository.loadPage(param);
  }
}
