import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';

part 'guest_entity.freezed.dart';
part 'guest_entity.g.dart';

@freezed
abstract class GuestEntity with _$GuestEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GuestEntity({
    required String name,
    required String phone,
    double? experienceYears,
    String? city,
    @Default(UserType.saleperson) UserType type,
  }) = _GuestEntity;

  factory GuestEntity.fromJson(Map<String, dynamic> json) =>
      _$GuestEntityFromJson(json);
}
