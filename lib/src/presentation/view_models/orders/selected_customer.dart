import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../../domain/entities/product/product_entity.dart';

final orderSelectedCustomerViewModel =
    StateProvider.autoDispose<CustomerEntity?>((ref) {
  return null;
});

final orderSelectedProductsViewModel =
    StateProvider<List<ProductEntity>>((ref) {
  return [];
});

final orderLinesViewModel = StateProvider<List<OrderLineEntity>>((ref) {
  // final List<OrderLineEntity> lines = ref
  //     .watch(orderSelectedProductsViewModel.notifier)
  //     .state
  //     .map((product) => OrderLineEntity(
  //           product: product,
  //           id: -1,
  //         ))
  //     .toList();
  // return lines;
  return [];
});
