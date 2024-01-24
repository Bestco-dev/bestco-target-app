// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerEntityImpl _$$CustomerEntityImplFromJson(Map<String, dynamic> json) =>
    _$CustomerEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      rate: (json['rate'] as num?)?.toDouble() ?? 3,
      type: $enumDecode(_$CustomerTypeEnumMap, json['type']),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      nationalId: json['national_id'] as String?,
      taxId: json['tax_id'] as String?,
      imageUrl: json['image_url'] as String?,
      description: json['description'] as String?,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerEntityImplToJson(
        _$CustomerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'type': _$CustomerTypeEnumMap[instance.type]!,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'national_id': instance.nationalId,
      'tax_id': instance.taxId,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'address': instance.address.toJson(),
    };

const _$CustomerTypeEnumMap = {
  CustomerType.person: 'person',
  CustomerType.company: 'company',
};
