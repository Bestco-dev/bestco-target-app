import 'package:freezed_annotation/freezed_annotation.dart';

import '../key_valu_option/key_value_option.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const AddressModel._(); // Added constructor
  factory AddressModel({
    required int id,
    double? latitude,
    double? longitude,
    KeyValueOptionEntity? country,
    KeyValueOptionEntity? state,
    KeyValueOptionEntity? city,
    String? street,
    String? description,

    // KeyVal
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
