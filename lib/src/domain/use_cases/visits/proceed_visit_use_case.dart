import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/visits_proceed_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/visit/visit.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final proceedVisitUseCaseProvider = Provider<BaseUseCase<VisitModel>>(
    (ref) => ProceedVisitUseCase(ref.read(visitsProceedRepositoryProvider)));

class ProceedVisitUseCase extends BaseUseCase<VisitModel> {
  final CreateRepository<VisitModel> _repository;

  ProceedVisitUseCase(this._repository);

  @override
  Future<ResponseState<VisitModel>> call(ReqParam param) {
    return _repository.create(param);
  }
}
