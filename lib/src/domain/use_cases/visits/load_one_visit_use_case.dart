import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/visits_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/visit/visit.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadOneVisitUseCaseProvider = Provider<BaseUseCase<VisitModel>>(
    (ref) => LoadOneVisitsUseCase(ref.read(visitsRepositoryProvider)));

class LoadOneVisitsUseCase extends BaseUseCase<VisitModel> {
  final LoadOneRepository<VisitModel> _repository;

  LoadOneVisitsUseCase(this._repository);

  @override
  Future<ResponseState<VisitModel>> call(ReqParam param) {
    return _repository.loadOne(param);
  }
}
