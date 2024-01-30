import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/extensions/map.dart';
import '../../../data/types/types_enums.dart';
import '../address/address.dart';

part 'saleperson_entity.freezed.dart';
part 'saleperson_entity.g.dart';

@freezed
abstract class SalePersonEntity with _$SalePersonEntity {
  const SalePersonEntity._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SalePersonEntity(
          {required int id,
          required String name,
          String? imgUrl,
          String? email,
          String? phone,
          @JsonKey(name: "identification_id") String? nationalId,
          String? password,
          @JsonKey(name: "note") String? description,
          required AddressModel address,
          @Default(SalePersonStatus.active) SalePersonStatus status}) =
      _SalePersonEntity;

  factory SalePersonEntity.fromJson(Map<String, dynamic> json) =>
      _$SalePersonEntityFromJson(json);

  Map<String, dynamic> get curdJson => {
    "id": id,
    "name": name,
    "email": email,
    "phone": phone,
    "password":password,
    "nationalId":nationalId,
    "description":description,
  }.removeNulls();
}
