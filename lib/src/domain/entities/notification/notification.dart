import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/utils/converters/date.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class NotificationEntity with _$NotificationEntity {
  const NotificationEntity._(); // Added constructor
  factory NotificationEntity({
    required int id,
    required NotificationType type,
    required String status,
    String? title,
    String? body,
    String? payload,
    @NullableDatetime() required DateTime timestamp,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntityFromJson(json);

  bool get hasTitle => title != null;

  bool get hasBody => body != null;

  bool get isVisit => type.isVisit;

  bool get isNotification => type.isNotification;
}

enum NotificationType {
  @JsonValue('notification')
  notification,
  @JsonValue('customer_confirmation')
  customerConfirmation,
  @JsonValue('visit_rescheduled')
  visitRescheduled,
  @JsonValue('visit_assign')
  visitAssign,
  @JsonValue('maintenance_assign')
  maintenanceAssign,
  @JsonValue('emergency_visit_assign')
  emergencyVisitAssign,
  @JsonValue('reminder')
  reminder,
  @JsonValue('client_assign')
  clientAssign,
  @JsonValue('rating')
  rating,
}

extension Extension on NotificationType {
  bool get isVisit => this == NotificationType.visitAssign;
  bool get isNotification => this == NotificationType.notification;

  get color {
    switch (this) {
      case NotificationType.visitAssign:
        return Colors.green[900];
      case NotificationType.emergencyVisitAssign:
        return Colors.redAccent;
      case NotificationType.maintenanceAssign:
        return Colors.yellow[700];
      case NotificationType.customerConfirmation:
        return Colors.green;
      default:
        return Colors.blue;
    }
  }

  get icon {
    switch (this) {
      case NotificationType.emergencyVisitAssign:
        return Icons.warning_amber_outlined;
      case NotificationType.maintenanceAssign:
        return Icons.settings;
      case NotificationType.visitAssign:
        return Icons.note_alt_outlined;
      case NotificationType.customerConfirmation:
        return Icons.fact_check_outlined;
        case NotificationType.visitRescheduled:
        return Icons.date_range_outlined;
      default:
        return Iconsax.notification;
    }
  }
}
