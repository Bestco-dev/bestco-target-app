import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_entity.freezed.dart';
part 'invoice_entity.g.dart';

@freezed
abstract class InvoiceEntity with _$InvoiceEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory InvoiceEntity({
  required int id,
  required String name,
  required DateTime date,
  required double amount,
  }) = _InvoiceEntity;



  factory InvoiceEntity.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEntityFromJson(json);
}