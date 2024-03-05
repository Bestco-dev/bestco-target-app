import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/Invoice/Invoice_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/invoices_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

final invoicesListViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<List<InvoiceEntity>>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<List<InvoiceEntity>>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref.read(invoicesRemoteUseCaseProvider).load();
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
    final result = await ref.read(invoicesRemoteUseCaseProvider).load();
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
}
