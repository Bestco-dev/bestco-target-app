// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SafetyRequirementModel _$$_SafetyRequirementModelFromJson(
        Map<String, dynamic> json) =>
    _$_SafetyRequirementModel(
      id: json['id'] as int,
      image: json['image'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      sequence: json['sequence'] as int?,
    );

Map<String, dynamic> _$$_SafetyRequirementModelToJson(
        _$_SafetyRequirementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'sequence': instance.sequence,
    };
