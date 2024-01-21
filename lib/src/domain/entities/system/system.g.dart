// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SystemModel _$$_SystemModelFromJson(Map<String, dynamic> json) =>
    _$_SystemModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? '',
      failureType:
          $enumDecodeNullable(_$FailureTypeEnumMap, json['failureType']),
      lastCheckUp: DateTime.parse(json['lastCheckUp'] as String),
      testEquipments: (json['testEquipments'] as List<dynamic>?)
              ?.map((e) =>
                  TestRequirementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      safetyEquipments: (json['safetyEquipments'] as List<dynamic>?)
              ?.map((e) =>
                  SafetyRequirementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      genericKpis: (json['genericKpis'] as List<dynamic>?)
              ?.map((e) => KpiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recurringInterval: json['recurringInterval'] as int?,
      recurringRuleType: $enumDecodeNullable(
          _$RecurringRuleTypeEnumMap, json['recurringRuleType']),
      sequence: json['sequence'] as int?,
      gracePeriod: json['gracePeriod'] as int?,
    );

Map<String, dynamic> _$$_SystemModelToJson(_$_SystemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'failureType': _$FailureTypeEnumMap[instance.failureType],
      'lastCheckUp': instance.lastCheckUp.toIso8601String(),
      'testEquipments': instance.testEquipments.map((e) => e.toJson()).toList(),
      'safetyEquipments':
          instance.safetyEquipments.map((e) => e.toJson()).toList(),
      'genericKpis': instance.genericKpis.map((e) => e.toJson()).toList(),
      'equipments': instance.equipments.map((e) => e.toJson()).toList(),
      'recurringInterval': instance.recurringInterval,
      'recurringRuleType':
          _$RecurringRuleTypeEnumMap[instance.recurringRuleType],
      'sequence': instance.sequence,
      'gracePeriod': instance.gracePeriod,
    };

const _$FailureTypeEnumMap = {
  FailureType.full: 'full',
  FailureType.critical: 'critical',
  FailureType.nonCritical: 'nonCritical',
  FailureType.impairment: 'impairment',
};

const _$RecurringRuleTypeEnumMap = {
  RecurringRuleType.daily: 'daily',
  RecurringRuleType.weekly: 'weekly',
  RecurringRuleType.monthly: 'monthly',
  RecurringRuleType.yearly: 'yearly',
};
