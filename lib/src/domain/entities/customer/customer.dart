import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class CustomerModel with _$CustomerModel {
  const CustomerModel._(); // Added constructor
  factory CustomerModel({
    required String name,
    String? phone,
    String? email,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}
