import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';
import '../address/address.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class CustomerEntity with _$CustomerEntity {
  const CustomerEntity._(); // Added constructor
  factory CustomerEntity({
    required int id,
    required String name,
   @Default(3) double rate,
    required CustomerType type ,
    String? phone,
    String? email,
    String? website,
    String? nationalId,
    String? taxId,
    String? imageUrl,
    required AddressModel address,
  }) = _CustomerEntity;

  factory CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerEntityFromJson(json);
}
