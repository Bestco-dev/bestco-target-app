// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitModel _$$_VisitModelFromJson(Map<String, dynamic> json) =>
    _$_VisitModel(
      id: json['id'] as int,
      name: json['name'] as String,
      status: VisitStatusModel.fromJson(json['status'] as Map<String, dynamic>),
      type: $enumDecode(_$VisitTypeEnumMap, json['type']),
      date: DateTime.parse(json['date'] as String),
      customer: PartnerModel.fromJson(json['customer'] as Map<String, dynamic>),
      action: $enumDecodeNullable(_$VisitActionEnumMap, json['action']) ??
          VisitAction.ideal,
      isRescheduled: json['is_rescheduled'] as bool? ?? false,
      description: json['description'] == null
          ? null
          : VisitDescriptionModel.fromJson(
              json['description'] as Map<String, dynamic>),
      systems: (json['systems'] as List<dynamic>?)
              ?.map((e) => SystemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      engineers: (json['engineers'] as List<dynamic>?)
              ?.map((e) => EngineerEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VisitModelToJson(_$_VisitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status.toJson(),
      'type': _$VisitTypeEnumMap[instance.type]!,
      'date': instance.date.toIso8601String(),
      'customer': instance.customer.toJson(),
      'action': _$VisitActionEnumMap[instance.action]!,
      'is_rescheduled': instance.isRescheduled,
      'description': instance.description?.toJson(),
      'systems': instance.systems.map((e) => e.toJson()).toList(),
      'engineers': instance.engineers.map((e) => e.toJson()).toList(),
    };

const _$VisitTypeEnumMap = {
  VisitType.visit: 'visit',
  VisitType.maintenance: 'maintenance',
  VisitType.emergency: 'emergency',
};

const _$VisitActionEnumMap = {
  VisitAction.confirmationRequest: 'confirmationRequest',
  VisitAction.proceed: 'proceed',
  VisitAction.ideal: 'ideal',
};
