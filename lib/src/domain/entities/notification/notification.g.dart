// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationEntity _$$_NotificationEntityFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationEntity(
      id: json['id'] as int,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      status: json['status'] as String,
      title: json['title'] as String?,
      body: json['body'] as String?,
      payload: json['payload'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_NotificationEntityToJson(
        _$_NotificationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'status': instance.status,
      'title': instance.title,
      'body': instance.body,
      'payload': instance.payload,
      'timestamp': instance.timestamp.toIso8601String(),
    };

const _$NotificationTypeEnumMap = {
  NotificationType.notification: 'notification',
  NotificationType.customerConfirmation: 'customer_confirmation',
  NotificationType.visitRescheduled: 'visit_rescheduled',
  NotificationType.visitAssign: 'visit_assign',
  NotificationType.maintenanceAssign: 'maintenance_assign',
  NotificationType.emergencyVisitAssign: 'emergency_visit_assign',
  NotificationType.reminder: 'reminder',
  NotificationType.clientAssign: 'client_assign',
  NotificationType.rating: 'rating',
};
