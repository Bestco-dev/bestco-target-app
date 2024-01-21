import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/equipments_history_repository_impl.dart';
import '../../entities/equipment_history/equipment_history.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadEquipmentHistoryUseCaseProvider =
    Provider<BaseUseCase<List<EquipmentHistoryModel>>>((ref) =>
        LoadEquipmentUseCase(ref.read(equipmentsHistoryRepositoryProvider)));

class LoadEquipmentUseCase extends BaseUseCase<List<EquipmentHistoryModel>> {
  final LoadRepository<EquipmentHistoryModel> _repository;

  LoadEquipmentUseCase(this._repository);

  @override
  Future<ResponseState<List<EquipmentHistoryModel>>> call(ReqParam param) {
    return _repository.load(param);
  }
}
