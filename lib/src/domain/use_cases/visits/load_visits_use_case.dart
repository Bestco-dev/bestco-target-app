import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/visits_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/visit/visit.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadVisitUseCaseProvider = Provider<BaseUseCase<List<VisitModel>>>(
    (ref) => LoadVisitUseCase(ref.read(visitsRepositoryProvider)));

class LoadVisitUseCase extends BaseUseCase<List<VisitModel>> {
  final LoadRepository<VisitModel> _repository;

  LoadVisitUseCase(this._repository);

  @override
  Future<ResponseState<List<VisitModel>>> call(ReqParam param) {
    return _repository.load(param);
  }
}
