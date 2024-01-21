import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/notification/notification.dart';
import '../../domain/use_cases/notifications/load_paginated_notifications_use_case.dart';
import '../custom_widgets/common/pagination/state/pagination_state.dart';
import 'pagination_view_model.dart';

final notificationsPaginationViewModelProvider =
    StateNotifierProvider.autoDispose<PaginationViewModel<NotificationEntity>,
        PaginationState<NotificationEntity>>(
  (ref) => PaginationViewModel<NotificationEntity>(
    state: PaginationState<NotificationEntity>(entities: []),
    url: '/notifications',
    useCase: ref.read(notificationPaginationUseCaseProvider),
  ),
);
