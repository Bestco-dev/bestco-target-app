// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engineer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EngineerEntity _$$_EngineerEntityFromJson(Map<String, dynamic> json) =>
    _$_EngineerEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      avatarUrl: json['avatar_url'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
    );

Map<String, dynamic> _$$_EngineerEntityToJson(_$_EngineerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'phone': instance.phone,
    };
