import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../customer/customer.dart';
import '../question_entity/question_entity.dart';
import '../service_main/main_service_entity.dart';
import '../service_sub/sub_service.dart';

part 'order_service_entity.freezed.dart';
part 'order_service_entity.g.dart';

@freezed
abstract class OrderServiceEntity with _$OrderServiceEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderServiceEntity({
    @Default(0) int id,
    CustomerEntity? customer,
    required MainServiceEntity mainService,
    required SubServiceEntity subService,
    required DateTime date,
    @Default([]) List<QuestionEntity> questions,
  }) = _OrderServiceEntity;

  factory OrderServiceEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderServiceEntityFromJson(json);
}
