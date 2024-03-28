// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visits_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitEntityImpl _$$VisitEntityImplFromJson(Map<String, dynamic> json) =>
    _$VisitEntityImpl(
      id: json['id'] as int? ?? 0,
      customer: json['customer'] == null
          ? null
          : CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      description: json['description'] as String? ?? '',
      isDone: json['is_done'] as bool? ?? false,
      type: $enumDecodeNullable(_$VisitTypeEnumMap, json['type']) ??
          VisitType.visit,
    );

Map<String, dynamic> _$$VisitEntityImplToJson(_$VisitEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer?.toJson(),
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
      'is_done': instance.isDone,
      'type': _$VisitTypeEnumMap[instance.type]!,
    };

const _$VisitTypeEnumMap = {
  VisitType.visit: 'visit',
  VisitType.call: 'call',
};
