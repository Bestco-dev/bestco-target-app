import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types.dart';
import '../engineer/engineer_entity.dart';
import '../partner/partner.dart';
import '../system/system.dart';
import '../visit_descriptioin/visit_description.dart';
import '../visit_status/visit_status.dart';

part 'visit.freezed.dart';
part 'visit.g.dart';

@freezed
class VisitModel with _$VisitModel {
  const VisitModel._(); // Added constructor
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory VisitModel({
    required int id,
    required String name,
    required VisitStatusModel status,
    required VisitType type,
    required DateTime date,
    required PartnerModel customer,
    @Default(VisitAction.ideal) VisitAction action,
    @Default(false) bool isRescheduled,
    VisitDescriptionModel? description,
    @Default([]) List<SystemModel> systems,
    @Default([]) List<EngineerEntity> engineers,
  }) = _VisitModel;

  factory VisitModel.fromJson(Map<String, dynamic> json) =>
      _$VisitModelFromJson(json);

  // bool get isEmergency => type == VisitType.emergency;
  // bool get isNormalVisit => type == VisitType.visit;
  // bool get isMaintenance => type == VisitType.maintenance;
}

// Rating: Selection
// Visit state: review
// maintenance_count
// Maintenance Requests
// Maintenance Requests
// equipment_state
// equipment_ids
// equipment_count
// Customer
// Tags
