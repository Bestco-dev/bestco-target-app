
import '../../common/res/numbers.dart';
import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../common/utils/pagination/parser.dart';
import '../../domain/entities/notification/notification.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../demo/notifications.dart';
import 'base/resource.dart';

class NotificationDataSourceImpl extends LoadingResDataSource<NotificationEntity> {

  NotificationDataSourceImpl();

  @override
  Future<ResponseState<List<NotificationEntity>>> load(ReqParam param) async{
    try {
      await 1.delay();
      final visits = getNotificationList(length: 40);
      return ResponseState<List<NotificationEntity>>.success(data: visits);
    } catch (e) {
      return ResponseState<List<NotificationEntity>>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<NotificationEntity>> loadOne(ReqParam param)async {
    try {
      await 3.delay();
      final visit = getNotification();
      return ResponseState<NotificationEntity>.success(data: visit);
    } catch (e) {
      return ResponseState<NotificationEntity>.failure(error: NetworkExceptions.parse(e));
    }
  }

  @override
  Future<ResponseState<Pagination<NotificationEntity>>> loadPage(
      ReqParam param)  async {
    try {
      await 3.delay();
      final data = mockNotificationsDataResponse();

      final parser = PaginationParser<NotificationEntity>();
      final page = await parser.parseList(data, NotificationEntity.fromJson);
      return ResponseState<Pagination<NotificationEntity>>.success(data: page!);
    } catch (e) {
      return ResponseState<Pagination<NotificationEntity>>.failure(error: NetworkExceptions.parse(e));
    }
  }
}
