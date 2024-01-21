// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestRequirementModel _$$_TestRequirementModelFromJson(
        Map<String, dynamic> json) =>
    _$_TestRequirementModel(
      id: json['id'] as int,
      image: json['image'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      sequence: json['sequence'] as int?,
    );

Map<String, dynamic> _$$_TestRequirementModelToJson(
        _$_TestRequirementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'sequence': instance.sequence,
    };
