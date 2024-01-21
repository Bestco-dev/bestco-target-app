// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeModel _$$_TimeModelFromJson(Map<String, dynamic> json) => _$_TimeModel(
      time: json['time'] as String,
      type: $enumDecodeNullable(_$TimeTypeEnumMap, json['type']) ?? TimeType.am,
    );

Map<String, dynamic> _$$_TimeModelToJson(_$_TimeModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'type': _$TimeTypeEnumMap[instance.type]!,
    };

const _$TimeTypeEnumMap = {
  TimeType.am: 'am',
  TimeType.pm: 'pm',
};
