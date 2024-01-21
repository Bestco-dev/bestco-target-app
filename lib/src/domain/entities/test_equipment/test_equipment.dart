import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_equipment.freezed.dart';
part 'test_equipment.g.dart';

@freezed
abstract class TestRequirementModel with _$TestRequirementModel {
  const TestRequirementModel._();
  @JsonSerializable(explicitToJson: true)
  const factory TestRequirementModel({
  required int id,
  String? image,
  required String name,
  String? description,
  int? sequence,
  }) = _TestRequirementModel;

  factory TestRequirementModel.fromJson(Map<String, dynamic> json) =>
      _$TestRequirementModelFromJson(json);
}