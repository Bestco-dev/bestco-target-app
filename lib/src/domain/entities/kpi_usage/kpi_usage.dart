import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kpi_usage.freezed.dart';
part 'kpi_usage.g.dart';

@freezed
abstract class KpiUsageModel with _$KpiUsageModel {
  const KpiUsageModel._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory KpiUsageModel({
  @Default('') String description,
  String? link,
  }) = _KpiUsageModel;

  factory KpiUsageModel.fromJson(Map<String, dynamic> json) =>
      _$KpiUsageModelFromJson(json);

  bool get hasPdf =>link!=null;
}
