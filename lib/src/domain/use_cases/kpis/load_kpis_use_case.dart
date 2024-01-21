import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/kips_repository_impl.dart';
import '../../entities/kpi/kpi.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadKpiUseCaseProvider = Provider<BaseUseCase<List<KpiModel>>>(
    (ref) => LoadKpiUseCase(ref.read(kpisRepositoryProvider)));

class LoadKpiUseCase extends BaseUseCase<List<KpiModel>> {
  final LoadRepository<KpiModel> _repository;

  LoadKpiUseCase(this._repository);

  @override
  Future<ResponseState<List<KpiModel>>> call(ReqParam param) {
    return _repository.load(param);
  }
}
