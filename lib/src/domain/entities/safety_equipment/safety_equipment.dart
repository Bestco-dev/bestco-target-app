import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'safety_equipment.freezed.dart';
part 'safety_equipment.g.dart';

@freezed
abstract class SafetyRequirementModel with _$SafetyRequirementModel {
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SafetyRequirementModel({
    required int id,
    String? image,
    required String name,
    String? description,
    int? sequence,
  }) = _SafetyRequirementModel;



  factory SafetyRequirementModel.fromJson(Map<String, dynamic> json) =>
      _$SafetyRequirementModelFromJson(json);
}