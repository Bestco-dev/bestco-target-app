import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';
import 'curd_view_model.dart';
import 'details_view_model.dart';

final customersListViewModelProvider =
    StateNotifierProvider<ViewModel, UiState<List<CustomerEntity>>>(
        (ref) => ViewModel(ref: ref));

class ViewModel extends StateNotifier<UiState<List<CustomerEntity>>> {
  final Ref ref;
  ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref.read(customersRemoteUseCaseProvider).load();
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        print("has data ${data.length}");

        state = UiState.data(data: data.reversed.toList());
      }
    }, failure: (error) {
      print("has error ${error.message}");
      state = UiState.error(error: error);
    });
  }

  addToUi(CustomerEntity customer) {
    //72.167.49.96:8085
    state.maybeWhen(
      orElse: () {
        state = UiState.data(data: [customer]);
      },
      data: (value) {
        state = UiState.data(data: value..insert(0, customer));
      },
    );
  }

  updateToUi(CustomerEntity customer) {
    state.maybeWhen(
      orElse: () {},
      data: (data) {
        state = UiState.data(data: [
          for (CustomerEntity item in data)
            if (item.id == customer.id) customer else item
        ]);
      },
    );
  }
  refresh() async {
    ProgressBar.show();
    final result = await ref.read(customersRemoteUseCaseProvider).load();
    ProgressBar.hide();
    result.when(success: (data) {
      load();
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  List<CustomerEntity> get _customers =>
      state.maybeWhen(data: (data) => data, orElse: () => []);
}
