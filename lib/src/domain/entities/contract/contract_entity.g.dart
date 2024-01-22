// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractEntityImpl _$$ContractEntityImplFromJson(Map<String, dynamic> json) =>
    _$ContractEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      expirationDate: DateTime.parse(json['expiration_date'] as String),
    );

Map<String, dynamic> _$$ContractEntityImplToJson(
        _$ContractEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'expiration_date': instance.expirationDate.toIso8601String(),
    };
