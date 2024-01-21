


import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'engineer_entity.freezed.dart';
part 'engineer_entity.g.dart';

@freezed
abstract class EngineerEntity with _$EngineerEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EngineerEntity({
    required int id,
    required String name,
    @Default('') String avatarUrl,
    @Default('') String phone,
  }) = _EngineerEntity;



  factory EngineerEntity.fromJson(Map<String, dynamic> json) =>
      _$EngineerEntityFromJson(json);
}