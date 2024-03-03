import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/targets_repo_impl.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/target/target_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

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
        await ref.read(targetsRemoteRepositoryProvider).loadActive(ReqParam());
    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  refresh() async {
    state = const UiState.loading();
    final result =
        await ref.read(targetsRemoteRepositoryProvider).loadActive(ReqParam());
    // ProgressBar.hide();
    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
