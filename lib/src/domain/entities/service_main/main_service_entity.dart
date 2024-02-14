import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_service_entity.freezed.dart';
part 'main_service_entity.g.dart';

@freezed
abstract class MainServiceEntity with _$MainServiceEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MainServiceEntity({
    required int id,
    required String name,
    
  }) = _MainServiceEntity;



  factory MainServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$MainServiceEntityFromJson(json);
}