// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartnerModel _$$_PartnerModelFromJson(Map<String, dynamic> json) =>
    _$_PartnerModel(
      id: json['id'] as int,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String,
      phone: json['phone'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      systems: (json['systems'] as List<dynamic>?)
              ?.map((e) => SystemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PartnerModelToJson(_$_PartnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'address': instance.address.toJson(),
      'email': instance.email,
      'systems': instance.systems.map((e) => e.toJson()).toList(),
    };
