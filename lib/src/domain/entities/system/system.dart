import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';
import '../equipment/equipment.dart';
import '../kpi/kpi.dart';
import '../safety_equipment/safety_equipment.dart';
import '../test_equipment/test_equipment.dart';

part 'system.freezed.dart';
part 'system.g.dart';

@freezed
class SystemModel with _$SystemModel {

  const SystemModel._(); // Added constructor
  @JsonSerializable(explicitToJson: true)
  factory SystemModel({
    required int id,
    required String name,
    @Default('') String image,
    FailureType? failureType,
    required DateTime lastCheckUp,
    @Default([]) List<TestRequirementModel> testEquipments,
    @Default([]) List<SafetyRequirementModel> safetyEquipments,
    @Default([]) List<KpiModel> genericKpis,
    @Default([]) List<EquipmentModel> equipments,

    ///refactor
    int? recurringInterval,
    RecurringRuleType? recurringRuleType,
    int? sequence,
    int? gracePeriod,
  }) = _SystemModel;

  factory SystemModel.fromJson(Map<String, dynamic> json) =>
      _$SystemModelFromJson(json);

  bool get hasRecurring =>
      recurringInterval != null && recurringRuleType != null;

  bool get hasSequence => sequence != null;

  bool get hasGracePeriod => gracePeriod != null;

  bool get hasInfo => hasRecurring || hasSequence || hasGracePeriod;

}

