import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/invoice_repo_impl.dart';
import '../../data/repositories/visits_repo_impl.dart';
import '../entities/invoice_entity/invoice_entity.dart';
import '../entities/req_param/req_param.dart';
import '../entities/response/response.dart';
import '../entities/visits/visits_entity.dart';
import '../repositories/invoice_repo.dart';
import '../repositories/visits_repo.dart';

final visitsRemoteUseCaseProvider = Provider<_UseCase>(
    (ref) => _UseCase(ref.read(visitsRemoteRepositoryProvider)));

class _UseCase implements VisitsRepo {
  VisitsRepo repo;
  _UseCase(this.repo);

  @override
  Future<ResponseState<VisitEntity>> create(ReqParam param) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> delete(ReqParam param) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<List<VisitEntity>>> load() {
   return repo.load();
  }

  @override
  Future<ResponseState<VisitEntity>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<bool>> update(ReqParam param) {
    // TODO: implement update
    throw UnimplementedError();
  }

}
