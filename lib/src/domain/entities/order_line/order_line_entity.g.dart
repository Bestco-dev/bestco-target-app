// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderLineEntityImpl _$$OrderLineEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderLineEntityImpl(
      id: json['id'] as int? ?? 0,
      product: ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
      qtn: (json['qtn'] as num?)?.toDouble() ?? 1,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$OrderLineEntityImplToJson(
        _$OrderLineEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product.toJson(),
      'qtn': instance.qtn,
      'price': instance.price,
    };
