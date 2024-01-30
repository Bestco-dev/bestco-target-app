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
      type: $enumDecode(_$CustomerTypeEnumMap, json['company_type']),
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      vat: json['vat'] as String?,
      imgUrl: json['img_url'] as String?,
      description: json['comment'] as String?,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerEntityImplToJson(
        _$CustomerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company_type': _$CustomerTypeEnumMap[instance.type]!,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'vat': instance.vat,
      'img_url': instance.imgUrl,
      'comment': instance.description,
      'address': instance.address.toJson(),
    };

const _$CustomerTypeEnumMap = {
  CustomerType.person: 'person',
  CustomerType.company: 'company',
};
