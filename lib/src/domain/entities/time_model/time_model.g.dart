// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeModelImpl _$$TimeModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeModelImpl(
      time: json['time'] as String,
      type: $enumDecodeNullable(_$TimeTypeEnumMap, json['type']) ?? TimeType.am,
    );

Map<String, dynamic> _$$TimeModelImplToJson(_$TimeModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'type': _$TimeTypeEnumMap[instance.type]!,
    };

const _$TimeTypeEnumMap = {
  TimeType.am: 'am',
  TimeType.pm: 'pm',
};
