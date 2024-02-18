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
      qtn: (json['qty'] as num?)?.toDouble() ?? 1,
      priceUnit: (json['price_unit'] as num?)?.toDouble() ?? 0,
      totalPrice: (json['total_price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$OrderLineEntityImplToJson(
        _$OrderLineEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product.toJson(),
      'qty': instance.qtn,
      'price_unit': instance.priceUnit,
      'total_price': instance.totalPrice,
    };
