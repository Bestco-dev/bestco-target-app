import 'package:freezed_annotation/freezed_annotation.dart';

import '../address/address.dart';
import '../system/system.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class PartnerModel with _$PartnerModel {
  const PartnerModel._(); // Added constructor
  @JsonSerializable(explicitToJson: true)
  factory PartnerModel({
    @JsonValue('uid') required int id,
    required String name,
    required String avatarUrl,
    required String phone,
    required AddressModel address,
    String? email,
    @Default([]) List<SystemModel> systems,
  }) = _PartnerModel;

  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);

  bool get hasEmail => email != null;
}
