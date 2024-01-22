import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/types/types_enums.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._(); // Added constructor
  factory UserEntity({
    required int id,
    required String name,
    String? email,
    String? phone,
    String? imageUrl,
    String? lang,
    required UserType type ,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  bool get hasEmail => email != null;
}
