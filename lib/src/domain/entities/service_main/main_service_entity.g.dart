// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_service_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainServiceEntityImpl _$$MainServiceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MainServiceEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      type: $enumDecode(_$MainServiceTypeEnumMap, json['type']),
      imageUrl: json['image_url'] as String? ?? '',
    );

Map<String, dynamic> _$$MainServiceEntityImplToJson(
        _$MainServiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$MainServiceTypeEnumMap[instance.type]!,
      'image_url': instance.imageUrl,
    };

const _$MainServiceTypeEnumMap = {
  MainServiceType.finance: 'finance',
  MainServiceType.marking: 'marking',
  MainServiceType.cleaning: 'cleaning',
  MainServiceType.health: 'health',
  MainServiceType.digital: 'digital',
  MainServiceType.consult: 'consult',
  MainServiceType.other: 'other',
};
