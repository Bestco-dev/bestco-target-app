import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visit/visit.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/visits_proceed_data_source.dart';

final visitsProceedRepositoryProvider = Provider<CreateRepository<VisitModel>>(
    (ref) => VisitsProceedRepositoryImpl(ref.read(visitProceedDataSourceProvider)));

class VisitsProceedRepositoryImpl extends CreateRepository<VisitModel> {
  final CreateResDatasource<VisitModel> _datasource;
  VisitsProceedRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<VisitModel>> create(ReqParam param) {
    return _datasource.create(param);
  }

}
