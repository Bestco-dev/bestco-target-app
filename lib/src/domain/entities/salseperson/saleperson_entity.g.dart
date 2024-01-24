// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saleperson_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalePersonEntityImpl _$$SalePersonEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SalePersonEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      nationalId: json['national_id'] as String?,
      password: json['password'] as String?,
      description: json['description'] as String?,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$SalePersonStatusEnumMap, json['status']) ??
          SalePersonStatus.active,
    );

Map<String, dynamic> _$$SalePersonEntityImplToJson(
        _$SalePersonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'email': instance.email,
      'phone': instance.phone,
      'national_id': instance.nationalId,
      'password': instance.password,
      'description': instance.description,
      'address': instance.address.toJson(),
      'status': _$SalePersonStatusEnumMap[instance.status]!,
    };

const _$SalePersonStatusEnumMap = {
  SalePersonStatus.active: 'active',
  SalePersonStatus.unActive: 'unActive',
};
