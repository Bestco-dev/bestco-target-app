import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/visits_request_confirm_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/visit/visit.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final requestConfirmVisitUseCaseProvider = Provider<BaseUseCase<VisitModel>>(
    (ref) => RequestConfirmVisitUseCase(ref.read(visitsRequestConfirmRepositoryProvider)));

class RequestConfirmVisitUseCase extends BaseUseCase<VisitModel> {
  final CreateRepository<VisitModel> _repository;

  RequestConfirmVisitUseCase(this._repository);

  @override
  Future<ResponseState<VisitModel>> call(ReqParam param) {
    return _repository.create(param);
  }
}
