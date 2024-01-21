import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/systems_repository_impl.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../entities/system/system.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadOneSystemUseCaseProvider = Provider<BaseUseCase<SystemModel>>(
    (ref) => LoadOneSystemUseCase(ref.read(systemsRepositoryProvider)));

class LoadOneSystemUseCase extends BaseUseCase<SystemModel> {
  final LoadOneRepository<SystemModel> _repository;

  LoadOneSystemUseCase(this._repository);

  @override
  Future<ResponseState<SystemModel>> call(ReqParam param) {
    return _repository.loadOne(param);
  }
}
