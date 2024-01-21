// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyEntity _$$_CompanyEntityFromJson(Map<String, dynamic> json) =>
    _$_CompanyEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String?,
      logo: json['logo'] as String?,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CompanyEntityToJson(_$_CompanyEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'logo': instance.logo,
      'address': instance.address.toJson(),
    };
