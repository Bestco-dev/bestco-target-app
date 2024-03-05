import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../../domain/entities/ui_state/ui_state.dart';

final customerDetailsProvider = StateProvider<UiState<CustomerEntity>>((ref) {
  return const UiState.initial();
});
