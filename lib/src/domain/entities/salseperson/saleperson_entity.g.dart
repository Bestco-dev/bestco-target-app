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
      imgUrl: json['img_url'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      nationalId: json['identification_id'] as String?,
      password: json['password'] as String?,
      description: json['note'] as String?,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$SalePersonStatusEnumMap, json['status']) ??
          SalePersonStatus.active,
    );

Map<String, dynamic> _$$SalePersonEntityImplToJson(
        _$SalePersonEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'img_url': instance.imgUrl,
      'email': instance.email,
      'phone': instance.phone,
      'identification_id': instance.nationalId,
      'password': instance.password,
      'note': instance.description,
      'address': instance.address.toJson(),
      'status': _$SalePersonStatusEnumMap[instance.status]!,
    };

const _$SalePersonStatusEnumMap = {
  SalePersonStatus.active: 'active',
  SalePersonStatus.unActive: 'unActive',
};
