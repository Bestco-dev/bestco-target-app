import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/invoice_entity/invoice_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../../domain/use_cases/invoices_use_case.dart';
import '../../../domain/use_cases/visits_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

final visitsListViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<List<VisitEntity>>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<List<VisitEntity>>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref.read(visitsRemoteUseCaseProvider).load();
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
    final result = await ref.read(visitsRemoteUseCaseProvider).load();
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

  addToUi(VisitEntity visit) {
    //72.167.49.96:8085
    state.maybeWhen(
      orElse: () {
        state = UiState.data(data: [visit]);
      },
      data: (value) {
        state = UiState.data(data: value..insert(0, visit));
      },
    );
  }

  updateToUi(VisitEntity visit) {
    state.maybeWhen(
      orElse: () {},
      data: (data) {
        state = UiState.data(data: [
          for (VisitEntity item in data)
            if (item.id == visit.id) visit else item
        ]);
      },
    );
  }
}
