import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductEntity({
    required int id,
    required String name,
    @Default('') String imageUrl,
    String? description,
    double? price,
    String? department,
    String? brochureLink,
    @Default(ProductType.consu) ProductType type, //consu,service
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
