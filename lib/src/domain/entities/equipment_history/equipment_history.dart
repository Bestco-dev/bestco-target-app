import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../kpi/kpi.dart';

part 'equipment_history.freezed.dart';
part 'equipment_history.g.dart';

@freezed
abstract class EquipmentHistoryModel with _$EquipmentHistoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EquipmentHistoryModel({
    required DateTime date,
    @Default([]) List<KpiModel> kpis,
  }) = _EquipmentHistoryModel;

  factory EquipmentHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentHistoryModelFromJson(json);
}
