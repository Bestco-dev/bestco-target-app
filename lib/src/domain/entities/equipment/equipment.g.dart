// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentModel _$$_EquipmentModelFromJson(Map<String, dynamic> json) =>
    _$_EquipmentModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? '',
      isGeneric: json['isGeneric'] ?? false,
      failures: $enumDecodeNullable(_$FailureTypeEnumMap, json['failures']),
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      kpis: (json['kpis'] as List<dynamic>?)
              ?.map((e) => KpiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EquipmentModelToJson(_$_EquipmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'isGeneric': instance.isGeneric,
      'failures': _$FailureTypeEnumMap[instance.failures],
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'kpis': instance.kpis.map((e) => e.toJson()).toList(),
    };

const _$FailureTypeEnumMap = {
  FailureType.full: 'full',
  FailureType.critical: 'critical',
  FailureType.nonCritical: 'nonCritical',
  FailureType.impairment: 'impairment',
};
