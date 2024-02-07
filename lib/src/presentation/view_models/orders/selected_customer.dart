import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/product/product_entity.dart';

final orderSelectedCustomerViewModel = StateProvider<CustomerEntity?>((ref) {
  return null;
});

final orderSelectedProductsViewModel =
    StateProvider<List<ProductEntity>>((ref) {
  return [];
});
