import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/ui_state/ui_state.dart';

final salepersonDetailsProvider = StateProvider<UiState<SalePersonEntity>>((ref) {
  return const UiState.initial();
});
