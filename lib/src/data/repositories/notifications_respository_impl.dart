import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/notification/notification.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/repositories/resource.dart';
import '../data_sources/base/resource.dart';
import '../data_sources/notifications_data_source_impl.dart';

final notificationsRepositoryProvider =
    Provider<LoadingRepository<NotificationEntity>>(
        (ref) => NotificationsRepositoryImpl(NotificationDataSourceImpl()));

class NotificationsRepositoryImpl
    implements LoadingRepository<NotificationEntity> {
  final LoadingResDataSource<NotificationEntity> _datasource;

  NotificationsRepositoryImpl(this._datasource);

  @override
  Future<ResponseState<NotificationEntity>> loadOne(ReqParam param) {
    return _datasource.loadOne(param);
  }

  @override
  Future<ResponseState<Pagination<NotificationEntity>>> loadPage(
      ReqParam param) {
    return _datasource.loadPage(param);
  }

  @override
  Future<ResponseState<List<NotificationEntity>>> load(ReqParam param) {
    return _datasource.load(param);
  }
}
