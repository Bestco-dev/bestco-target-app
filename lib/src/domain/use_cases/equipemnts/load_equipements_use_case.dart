import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/equipments_repository_impl.dart';
import '../../entities/equipment/equipment.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadEquipmentUseCaseProvider =
    Provider<BaseUseCase<List<EquipmentModel>>>(
        (ref) => LoadEquipmentUseCase(ref.read(equipmentsRepositoryProvider)));

class LoadEquipmentUseCase extends BaseUseCase<List<EquipmentModel>> {
  final LoadRepository<EquipmentModel> _repository;

  LoadEquipmentUseCase(this._repository);

  @override
  Future<ResponseState<List<EquipmentModel>>> call(ReqParam param) {
    return _repository.load(param);
  }
}
