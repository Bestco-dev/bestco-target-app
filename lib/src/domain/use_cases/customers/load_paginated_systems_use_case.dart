import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../data/repositories/systems_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/system/system.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final systemsPaginationUseCaseProvider =
    Provider<BaseUseCase<Pagination<SystemModel>>>(
  (ref) =>
      NotificationsPaginationUseCase(ref.read(systemsRepositoryProvider)),
);

class NotificationsPaginationUseCase
    extends BaseUseCase<Pagination<SystemModel>> {
  final LoadPageRepository<SystemModel> _repository;

  NotificationsPaginationUseCase(this._repository);

  @override
  Future<ResponseState<Pagination<SystemModel>>> call(ReqParam param) {
    return _repository.loadPage(param);
  }
}
