import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../data/repositories/equipments_repository_impl.dart';
import '../../entities/equipment/equipment.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadPaginatedEquipmentsUseCase =
    Provider<BaseUseCase<Pagination<EquipmentModel>>>((ref) =>
        PaginatedEquipmentsUseCase(ref.read(equipmentsRepositoryProvider)));

class PaginatedEquipmentsUseCase
    extends BaseUseCase<Pagination<EquipmentModel>> {
  final LoadPageRepository<EquipmentModel> _repository;

  PaginatedEquipmentsUseCase(this._repository);

  @override
  Future<ResponseState<Pagination<EquipmentModel>>> call(ReqParam param) {
    return _repository.loadPage(param);
  }
}
