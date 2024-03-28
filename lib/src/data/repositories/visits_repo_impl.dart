import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/invoice_entity/invoice_entity.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visits/visits_entity.dart';
import '../../domain/repositories/invoice_repo.dart';
import '../../domain/repositories/visits_repo.dart';
import '../data_sources/invoices/data_source.dart';
import '../data_sources/invoices/remote_data_source.dart';
import '../data_sources/visits/data_source.dart';
import '../data_sources/visits/remote_data_source.dart';

final visitsRemoteRepositoryProvider = Provider<_RepositoryImpl>(
  (ref) => _RepositoryImpl(
    ref.read(visitsRemoteDataSourceProvider),
  ),
);

class _RepositoryImpl extends VisitsRepo {
  final VisitsDataSource datasource;

  _RepositoryImpl(this.datasource);

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
    return datasource.load();
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
