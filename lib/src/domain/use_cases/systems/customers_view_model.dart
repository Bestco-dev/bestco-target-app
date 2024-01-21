import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../presentation/custom_widgets/common/pagination/state/pagination_state.dart';
import '../../../presentation/view_models/pagination_view_model.dart';
import '../../entities/system/system.dart';
import '../customers/load_paginated_systems_use_case.dart';


final systemsPaginationViewModelProvider =
    StateNotifierProvider<PaginationViewModel<SystemModel>,
        PaginationState<SystemModel>>(
  (ref) => PaginationViewModel<SystemModel>(
    state: PaginationState<SystemModel>(entities: []),
    url: '/systems',
    useCase: ref.read(systemsPaginationUseCaseProvider),
  ),
);
