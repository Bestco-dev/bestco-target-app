import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../../domain/use_cases/products_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';


final productsListViewModelProvider =
    StateNotifierProvider<_ViewModel, UiState<List<ProductEntity>>>(
        (ref) => _ViewModel(ref: ref));

class _ViewModel extends StateNotifier<UiState<List<ProductEntity>>> {
  final Ref ref;
  _ViewModel({required this.ref}) : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result = await ref.read(productsRemoteUseCaseProvider).load();
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

  addToUi(ProductEntity customer) {
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

  updateToUi(ProductEntity customer) {
    state.maybeWhen(
      orElse: () {},
      data: (data) {
        state = UiState.data(data: [
          for (ProductEntity item in data)
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

  List<ProductEntity> get _customers =>
      state.maybeWhen(data: (data) => data, orElse: () => []);
}
