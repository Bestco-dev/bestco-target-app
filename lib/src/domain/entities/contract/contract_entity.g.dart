// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractEntity _$$_ContractEntityFromJson(Map<String, dynamic> json) =>
    _$_ContractEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      expirationDate: DateTime.parse(json['expiration_date'] as String),
    );

Map<String, dynamic> _$$_ContractEntityToJson(_$_ContractEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'expiration_date': instance.expirationDate.toIso8601String(),
    };
