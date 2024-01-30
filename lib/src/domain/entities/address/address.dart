import 'package:freezed_annotation/freezed_annotation.dart';

import '../key_valu_option/key_value_option.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class AddressModel with _$AddressModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const AddressModel._(); // Added constructor
  factory AddressModel({
    @Default(0) int id,
    KeyValueOptionEntity? country,
    KeyValueOptionEntity? state,
    String? city,
    // KeyValueOptionEntity? city,
    String? street,
    String? description,
    double? latitude,
    double? longitude,

    // KeyVal
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
