// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String? ?? '',
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      department: json['department'] as String?,
      brochureLink: json['brochure_link'] as String?,
      type: $enumDecodeNullable(_$ProductTypeEnumMap, json['type']) ??
          ProductType.consu,
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'description': instance.description,
      'price': instance.price,
      'department': instance.department,
      'brochure_link': instance.brochureLink,
      'type': _$ProductTypeEnumMap[instance.type]!,
    };

const _$ProductTypeEnumMap = {
  ProductType.service: 'service',
  ProductType.consu: 'consu',
};
