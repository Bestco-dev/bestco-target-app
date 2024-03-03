// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TargetEntityImpl _$$TargetEntityImplFromJson(Map<String, dynamic> json) =>
    _$TargetEntityImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      target: (json['target'] as num?)?.toDouble() ?? 0,
      achieved: (json['achieved'] as num?)?.toDouble() ?? 0,
      commission: (json['commission'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TargetEntityImplToJson(_$TargetEntityImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'target': instance.target,
      'achieved': instance.achieved,
      'commission': instance.commission,
    };
