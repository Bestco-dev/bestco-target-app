import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/entities/equipment/equipment.dart';
import 'kpi_view_model.dart';

final equipmentProvider = StateNotifierProvider.family<_EquipmentViewModel,
    EquipmentModel, EquipmentModel>((ref, model) {
  return _EquipmentViewModel(ref, model);
});

class _EquipmentViewModel extends StateNotifier<EquipmentModel> {
  Ref ref;
  _EquipmentViewModel(this.ref, super.state);

  bool get isCompleteChecking {
    List<bool> checking = state.kpis.map((kpi) {
      final kpiWatch = ref.watch(kipProvider(kpi).notifier);
      return kpiWatch.isAnswered();
    }).toList();

    return checking.contains(false) ? false : true;
  }


  void updateAttachments(List<File> files) {
    print("in adding files");
    state = state.copyWith(
      attachFiles: [...files],
    );
  }
}
