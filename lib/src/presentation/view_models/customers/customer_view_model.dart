import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/customer/customer.dart';

final customerProvider =
    StateNotifierProvider.family<_ViewModel, CustomerEntity, CustomerEntity>(
        (ref, model) {
  return _ViewModel(model);
});

class _ViewModel extends StateNotifier<CustomerEntity> {
  _ViewModel(super.state);
}
