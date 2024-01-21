import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';
import '../attachment/attachment.dart';
import '../kpi/kpi.dart';

part 'equipment.freezed.dart';
part 'equipment.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  const EquipmentModel._(); // Added constructor
  @JsonSerializable(explicitToJson: true)
  factory EquipmentModel({
    required int id,
    required String name,
    @Default('') String image,
    @Default(false) isGeneric,
    FailureType? failures,
    @Default([]) List<AttachmentModel> attachments,
    @Default([]) List<KpiModel> kpis,
    @Default([]) @JsonKey(includeFromJson: false) List<File> attachFiles,

    ///refactor
    // @Default(false) bool contractShow,
    // EquipmentType? type,
    // int? sequence,
    // int? recurringInterval,
    // RecurringRuleType? recurringRuleType,
    // String? url,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentModelFromJson(json);
}
