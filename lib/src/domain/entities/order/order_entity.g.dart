// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      customer: json['customer'] == null
          ? null
          : CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      lines: (json['lines'] as List<dynamic>?)
              ?.map((e) => OrderLineEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      state: $enumDecodeNullable(_$OrderProductStateEnumMap, json['state']) ??
          OrderProductState.draft,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'customer': instance.customer?.toJson(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'state': _$OrderProductStateEnumMap[instance.state]!,
      'date': instance.date.toIso8601String(),
    };

const _$OrderProductStateEnumMap = {
  OrderProductState.draft: 'draft',
  OrderProductState.sent: 'sent',
  OrderProductState.sale: 'sale',
  OrderProductState.done: 'done',
  OrderProductState.cancelled: 'cancelled',
};
