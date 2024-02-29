import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';
import '../question_entity/question_entity.dart';

part 'main_service_entity.freezed.dart';
part 'main_service_entity.g.dart';

@freezed
abstract class MainServiceEntity with _$MainServiceEntity {
  const MainServiceEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MainServiceEntity({
    required int id,
    required String name,
    @Default('serviceType') String serviceType,
    @Default(MainServiceType.cleaning) MainServiceType type,
    @Default('') String imageUrl,

  }) = _MainServiceEntity;

  factory MainServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$MainServiceEntityFromJson(json);
  bool get hasImage => imageUrl.isNotEmpty;
}
