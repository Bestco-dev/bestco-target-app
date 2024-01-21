import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/equipment/equipment.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/equipments_data_source_impl.dart';

final equipmentsRepositoryProvider =
    Provider<LoadingRepository<EquipmentModel>>(
        (ref) => EquipmentsRepositoryImpl(EquipmentsDataSourceImpl()));

class EquipmentsRepositoryImpl extends LoadingRepository<EquipmentModel> {
  final LoadingResDataSource<EquipmentModel> _datasource;

  EquipmentsRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<List<EquipmentModel>>> load(ReqParam param) {
    return _datasource.load(param);
  }

  @override
  Future<ResponseState<EquipmentModel>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<EquipmentModel>>> loadPage(ReqParam param) {
    return _datasource.loadPage(param);
  }
}
