// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: json['id'] as int? ?? 0,
      customer: json['customer'] == null
          ? null
          : CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      lines: (json['lines'] as List<dynamic>?)
              ?.map((e) => OrderLineEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer?.toJson(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'date': instance.date.toIso8601String(),
    };
