import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
abstract class CompanyEntity with _$CompanyEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CompanyEntity({
    required int id,
    required String name,
    String? phone,
    String? logo,
    required AddressModel address,
  }) = _CompanyEntity;

  factory CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$CompanyEntityFromJson(json);
}
