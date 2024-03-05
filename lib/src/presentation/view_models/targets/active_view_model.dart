import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/target/target_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/targets_use_case.dart';

final activeViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<TargetEntity>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<TargetEntity>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result =
        await ref.read(targetsRemoteUseCaseProvider).loadActive(ReqParam());
    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  refresh() async {
    state = const UiState.loading();
    final result =
        await ref.read(targetsRemoteUseCaseProvider).loadActive(ReqParam());
    // ProgressBar.hide();
    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
