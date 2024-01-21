import 'package:freezed_annotation/freezed_annotation.dart';

import '../company/company.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._(); // Added constructor
  factory UserEntity({
    @JsonValue('uid') required int id,
    required String name,
    required String jobTitle,
    required CompanyEntity company,
    @Default(0) int scheduledVisitsCount,
    @Default(0) int maintenanceVisitsCount,
    @Default(0) int emergencyVisitsCount,
    String? email,
    String? phone,
    String? avatarUrl,
    String? lang,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  bool get hasEmail => email != null;
}
