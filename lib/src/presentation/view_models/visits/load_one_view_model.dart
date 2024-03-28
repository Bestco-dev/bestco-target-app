import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/demo/customers.dart';
import '../../../domain/entities/invoice_entity/invoice_entity.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../../domain/use_cases/invoices_use_case.dart';
import '../../../domain/use_cases/visits_use_case.dart';

final loadOneViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<VisitEntity>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<VisitEntity>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result =
        await ref.read(visitsRemoteUseCaseProvider).loadOne(ReqParam());
    result.when(success: (data) {
      CustomerEntity customer = getCustomer();
      // print(customer.)
      // print(d)
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  refresh() async {
    state = const UiState.loading();
    final result =
        await ref.read(visitsRemoteUseCaseProvider).loadOne(ReqParam());
    // ProgressBar.hide();
    result.when(success: (data) {
      state = UiState.data(data: data);
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }
}
