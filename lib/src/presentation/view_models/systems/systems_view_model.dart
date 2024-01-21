import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/system/system.dart';
import '../../../domain/use_cases/customers/load_paginated_systems_use_case.dart';
import '../../custom_widgets/common/pagination/state/pagination_state.dart';
import '../pagination_view_model.dart';

final customersPaginationViewModelProvider =
    StateNotifierProvider<PaginationViewModel<SystemModel>,
        PaginationState<SystemModel>>(
  (ref) => PaginationViewModel<SystemModel>(
    state: PaginationState<SystemModel>(entities: []),
    url: '/customers',
    useCase: ref.read(systemsPaginationUseCaseProvider),
  ),
);
