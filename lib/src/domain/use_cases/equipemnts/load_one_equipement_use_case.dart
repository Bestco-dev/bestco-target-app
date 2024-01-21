import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/equipments_repository_impl.dart';
import '../../entities/equipment/equipment.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final loadOneEquipmentUseCaseProvider = Provider<BaseUseCase<EquipmentModel>>(
    (ref) => LoadOneEquipmentUseCase(ref.read(equipmentsRepositoryProvider)));

class LoadOneEquipmentUseCase extends BaseUseCase<EquipmentModel> {
  final LoadOneRepository<EquipmentModel> _repository;

  LoadOneEquipmentUseCase(this._repository);

  @override
  Future<ResponseState<EquipmentModel>> call(ReqParam param) {
    return _repository.loadOne(param);
  }
}
