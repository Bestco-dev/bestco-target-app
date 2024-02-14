import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product_entity.dart';

part 'order_line_entity.freezed.dart';
part 'order_line_entity.g.dart';

@freezed
abstract class OrderLineEntity with _$OrderLineEntity {
  const OrderLineEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderLineEntity({
    @Default(0) int id,
    required ProductEntity product,
    @Default(1) double qtn,
    @Default(0) double price,
  }) = _OrderLineEntity;

  factory OrderLineEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderLineEntityFromJson(json);

  double get price => product.price ?? 0;
}
