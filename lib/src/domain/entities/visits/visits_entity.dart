import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/extensions/map.dart';
import '../../../data/types/types_enums.dart';
import '../customer/customer.dart';

part 'visits_entity.freezed.dart';
part 'visits_entity.g.dart';

@freezed
abstract class VisitEntity with _$VisitEntity {
  const VisitEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory VisitEntity({
    @Default(0) int id,
    CustomerEntity? customer,
    DateTime? date,
    @Default('') String description,
    @Default(false) bool isDone,
    @Default(VisitType.visit) VisitType type,
  }) = _VisitEntity;

  factory VisitEntity.fromJson(Map<String, dynamic> json) =>
      _$VisitEntityFromJson(json);

  Map<String, dynamic> get curdJson => {
        "id": id,
        "customer": customer,
        "description": description,
      }.removeNulls();
}
