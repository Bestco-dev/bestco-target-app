import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/targets_repo_impl.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/target/target_entity.dart';
import '../repositories/target_repo.dart';

final targetsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(targetsRemoteRepositoryProvider)));

class _UseCase implements TargetsRepo {
  TargetsRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<List<TargetEntity>>> load() {
    return repo.load();
  }

  @override
  Future<ResponseState<TargetEntity>> loadActive(ReqParam param) {
    return repo.loadActive(param);
  }
}
