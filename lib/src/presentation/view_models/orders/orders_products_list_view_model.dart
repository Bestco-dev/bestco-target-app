import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data_sources/orders_service/remote_data_source.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_services/order_service_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import '../../../domain/use_cases/customers_use_case.dart';
import '../../../domain/use_cases/orders_prodcuts_use_case.dart';
import '../../custom_widgets/common/custom_progress_bar.dart';

final selectedProductOrderViewModel =
    StateProvider.autoDispose<OrderEntity?>((ref) {
  return null;
});

final ordersProductsListViewModelProvider =
    StateNotifierProvider.family<ViewModel, UiState<List<OrderEntity>>, int?>(
        (ref, id) => ViewModel(ref: ref, salePersonId: id));

class ViewModel extends StateNotifier<UiState<List<OrderEntity>>> {
  final Ref ref;
  int? salePersonId;
  ViewModel({required this.ref, required this.salePersonId})
      : super(const UiState.initial()) {
    load();
  }
  load() async {
    state = const UiState.loading();
    final result =
        await ref.read(ordersProductsRemoteUseCaseProvider).load(ReqParam());
    result.when(success: (data) {
      if (data.isEmpty) {
        state = const UiState.empty();
      } else {
        print("has data ${data.length}");

        state = UiState.data(data: data.toList());
      }
    }, failure: (error) {
      print("has error ${error.message}");
      state = UiState.error(error: error);
    });
  }

  addToUi(OrderEntity order) {
    //72.167.49.96:8085
    state.maybeWhen(
      orElse: () {
        state = UiState.data(data: [order]);
      },
      data: (value) {
        state = UiState.data(data: value..insert(0, order));
      },
    );
  }

  updateToUi(OrderEntity order) {
    state.maybeWhen(
      orElse: () {},
      data: (data) {
        state = UiState.data(data: [
          for (OrderEntity item in data)
            if (item.id == order.id) order else item
        ]);
      },
    );
  }

  refresh() async {
    ProgressBar.show();
    final result =
        await ref.read(ordersProductsRemoteUseCaseProvider).load(ReqParam());
    ProgressBar.hide();
    result.when(success: (data) {
      load();
    }, failure: (error) {
      state = UiState.error(error: error);
    });
  }

  List<OrderEntity> get _data =>
      state.maybeWhen(data: (data) => data, orElse: () => []);
}
