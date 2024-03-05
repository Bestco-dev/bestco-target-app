import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/target/target_entity.dart';
import '../../domain/repositories/target_repo.dart';
import '../data_sources/tragets/data_source.dart';
import '../data_sources/tragets/remote_data_source.dart';

final targetsRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(targetsRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends TargetsRepo {
  final TargetsDataSource datasource;

  _RepositoryImpl(this.datasource);

  @override
  Future<ResponseState<List<TargetEntity>>> load() {
    return datasource.load();
  }

  @override
  Future<ResponseState<TargetEntity>> loadActive(ReqParam param) {
    return datasource.loadActive(param);
  }


}
