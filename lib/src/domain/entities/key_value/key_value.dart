import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value.freezed.dart';
part 'key_value.g.dart';

@freezed
abstract class KpiOptionModel with _$KpiOptionModel {
  const KpiOptionModel._();
  @JsonSerializable(explicitToJson: true)
  const factory KpiOptionModel({
    required String key,
    String? value,
    required String label,
    String? unit,
  }) = _KpiOptionModel;

  factory KpiOptionModel.fromJson(Map<String, dynamic> json) =>
      _$KpiOptionModelFromJson(json);
}
