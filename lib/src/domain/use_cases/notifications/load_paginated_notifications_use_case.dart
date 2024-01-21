import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/pagination/pagination/pagination.dart';
import '../../../data/repositories/notifications_respository_impl.dart';
import '../../entities/notification/notification.dart';
import '../../entities/req_param/req_param.dart';
import '../../entities/response/response.dart';
import '../../repositories/resource.dart';
import '../base.dart';

final notificationPaginationUseCaseProvider =
    Provider<BaseUseCase<Pagination<NotificationEntity>>>(
  (ref) =>
      NotificationsPaginationUseCase(ref.read(notificationsRepositoryProvider)),
);

class NotificationsPaginationUseCase
    extends BaseUseCase<Pagination<NotificationEntity>> {
  final LoadPageRepository<NotificationEntity> _repository;

  NotificationsPaginationUseCase(this._repository);

  @override
  Future<ResponseState<Pagination<NotificationEntity>>> call(ReqParam param) {
    return _repository.loadPage(param);
  }
}
