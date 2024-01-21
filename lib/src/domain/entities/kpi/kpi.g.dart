// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KpiModel _$$_KpiModelFromJson(Map<String, dynamic> json) => _$_KpiModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      failures: $enumDecodeNullable(_$FailureTypeEnumMap, json['failures']),
      measuermentType:
          $enumDecode(_$KpiMeasuermentTypeEnumMap, json['measuermentType']),
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => KpiOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      usage: json['usage'] == null
          ? null
          : KpiUsageModel.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_KpiModelToJson(_$_KpiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'failures': _$FailureTypeEnumMap[instance.failures],
      'measuermentType': _$KpiMeasuermentTypeEnumMap[instance.measuermentType]!,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'usage': instance.usage?.toJson(),
    };

const _$FailureTypeEnumMap = {
  FailureType.full: 'full',
  FailureType.critical: 'critical',
  FailureType.nonCritical: 'nonCritical',
  FailureType.impairment: 'impairment',
};

const _$KpiMeasuermentTypeEnumMap = {
  KpiMeasuermentType.singleChoice: 'singleChoice',
  KpiMeasuermentType.number: 'number',
  KpiMeasuermentType.numberCounter: 'numberCounter',
};
