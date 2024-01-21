import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/equipment_history/equipment_history.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/equipments_history_data_source_impl.dart';

final equipmentsHistoryRepositoryProvider =
    Provider<LoadingRepository<EquipmentHistoryModel>>((ref) =>
        EquipmentsRepositoryImpl(ref.read(equipmentHistoryDataSourceProvider)));

class EquipmentsRepositoryImpl
    extends LoadingRepository<EquipmentHistoryModel> {
  final LoadingResDataSource<EquipmentHistoryModel> _datasource;

  EquipmentsRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<List<EquipmentHistoryModel>>> load(ReqParam param) {
    return _datasource.load(param);
  }

  @override
  Future<ResponseState<EquipmentHistoryModel>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<EquipmentHistoryModel>>> loadPage(
      ReqParam param) {
    return _datasource.loadPage(param);
  }
}
