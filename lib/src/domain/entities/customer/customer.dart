import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';
import '../address/address.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class CustomerEntity with _$CustomerEntity {
  const CustomerEntity._(); // Add
  @JsonSerializable(
      fieldRename: FieldRename.snake, explicitToJson: true) // ed constructor
  factory CustomerEntity({
    required int id,
    required String name,
    @Default(3) @JsonKey(includeToJson: false) double rate,
    @JsonKey(name: "company_type") required CustomerType type,
    String? phone,
    String? email,
    String? website,
    String? vat,
    // String? taxId,
    String? imgUrl,
    @JsonKey(name: "comment")String? description,
    required AddressModel address,
  }) = _CustomerEntity;

  factory CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerEntityFromJson(json);
}
