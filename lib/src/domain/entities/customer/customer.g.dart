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
      nationalId: json['nationalId'] as String?,
      taxId: json['taxId'] as String?,
      imageUrl: json['imageUrl'] as String?,
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
      'nationalId': instance.nationalId,
      'taxId': instance.taxId,
      'imageUrl': instance.imageUrl,
      'address': instance.address,
    };

const _$CustomerTypeEnumMap = {
  CustomerType.individual: 'individual',
  CustomerType.company: 'company',
};
