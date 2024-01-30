import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_option.freezed.dart';
part 'key_value_option.g.dart';

@freezed
abstract class KeyValueOptionEntity with _$KeyValueOptionEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory KeyValueOptionEntity({
    @JsonKey(name: "id") required  dynamic key,
   @JsonKey(name: "name") String? value,
  }) = _KeyValueOptionEntity;



  factory KeyValueOptionEntity.fromJson(Map<String, dynamic> json) =>
      _$KeyValueOptionEntityFromJson(json);
}