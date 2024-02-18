import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';
import '../customer/customer.dart';
import '../order_line/order_line_entity.dart';

part 'order_entity.freezed.dart';
part 'order_entity.g.dart';

@freezed
abstract class OrderEntity with _$OrderEntity {
  const OrderEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderEntity({
    @Default(0) int id,
    @Default('') String name,
    CustomerEntity? customer,
    @Default([]) List<OrderLineEntity> lines,
    @Default(OrderProductState.draft) OrderProductState state,
    required DateTime date,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);


}
