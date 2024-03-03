import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/targets_repo_impl.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/target/target_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

final targetsListViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<List<TargetEntity>>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<List<TargetEntity>>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref.read(targetsRemoteRepositoryProvider).load();
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        state = UiState.data(data: data.toList());
      }
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  refresh() async {
    ProgressBar.show();
    final result = await ref.read(targetsRemoteRepositoryProvider).load();
    ProgressBar.hide();
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        state = UiState.data(data: data.toList());
      }
      // load();
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  List<TargetEntity> get _customers =>
      state.maybeWhen(data: (data) => data, orElse: () => []);
}
