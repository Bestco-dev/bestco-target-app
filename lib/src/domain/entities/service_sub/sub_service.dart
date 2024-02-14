import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_service.freezed.dart';
part 'sub_service.g.dart';

@freezed
abstract class SubServiceEntity with _$SubServiceEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SubServiceEntity({
    required int id,
    required String name,
  }) = _SubServiceEntity;

  factory SubServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$SubServiceEntityFromJson(json);
}
