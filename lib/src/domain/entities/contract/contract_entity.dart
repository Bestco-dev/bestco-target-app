import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_entity.freezed.dart';
part 'contract_entity.g.dart';

@freezed
abstract class ContractEntity with _$ContractEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ContractEntity({
    required int id,
    required String name,
    required DateTime expirationDate,
  }) = _ContractEntity;



  factory ContractEntity.fromJson(Map<String, dynamic> json) =>
      _$ContractEntityFromJson(json);
}