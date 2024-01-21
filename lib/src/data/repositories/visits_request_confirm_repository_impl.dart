import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visit/visit.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/visits_request_confirm_data_source.dart';

final visitsRequestConfirmRepositoryProvider = Provider<CreateRepository<VisitModel>>(
    (ref) => VisitsRequestConfirmRepositoryImpl(ref.read(visitRequestConfirmDataSourceProvider)));

class VisitsRequestConfirmRepositoryImpl extends CreateRepository<VisitModel> {
  final CreateResDatasource<VisitModel> _datasource;
  VisitsRequestConfirmRepositoryImpl(this._datasource);
  @override
  Future<ResponseState<VisitModel>> create(ReqParam param) {
    return _datasource.create(param);
  }

}
