import 'package:faker/faker.dart';

import '../../domain/entities/notification/notification.dart';

NotificationEntity getNotification() {
  final id = faker.randomGenerator.integer(5000);
  final date = faker.date.dateTime(minYear: 2023, maxYear: 2023);
  final label = "VI/${date.year}/${date.month}/00${date.day}";
  final type = faker.randomGenerator.element(NotificationType.values);
  final body = faker.lorem.sentence();
  return NotificationEntity(
      id: id,
      type: type,
      status: "done",
      timestamp: date,
      title: label,
      body: body);
}

List<NotificationEntity> getNotificationList({int length = 50}) {
  final list = <NotificationEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getNotification());
  }
  return list;
}

List<Map<String, dynamic>> mockNotificationsDataResponse({int length = 50}) {
  final list = getNotificationList();
  return list.map((e) => e.toJson()).toList();
}
