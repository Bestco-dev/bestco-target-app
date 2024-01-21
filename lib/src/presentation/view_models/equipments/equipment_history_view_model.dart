import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/equipment_history/equipment_history.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/equipemnts/load_equipement_histroy_use_case.dart';

final equipmentHistoryViewModelProvider = StateNotifierProvider.family<
    VisitsViewModel,
    UiState<List<EquipmentHistoryModel>>,
    int>((ref, id) => VisitsViewModel(id: id, ref: ref));

class VisitsViewModel
    extends StateNotifier<UiState<List<EquipmentHistoryModel>>> {
  final Ref ref;

  final int id;

  VisitsViewModel({required this.id, required this.ref})
      : super(const UiState.initial()) {
    load();
  }

  load() async {
    state = const UiState.loading();
    final result = await ref.read(loadEquipmentHistoryUseCaseProvider).call(
          ReqParam(
            url: "/load",
          ),
        );
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        state = UiState.data(data: data);
      }
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
