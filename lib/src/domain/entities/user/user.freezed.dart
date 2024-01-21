// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonValue('uid')
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  CompanyEntity get company => throw _privateConstructorUsedError;
  int get scheduledVisitsCount => throw _privateConstructorUsedError;
  int get maintenanceVisitsCount => throw _privateConstructorUsedError;
  int get emergencyVisitsCount => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonValue('uid') int id,
      String name,
      String jobTitle,
      CompanyEntity company,
      int scheduledVisitsCount,
      int maintenanceVisitsCount,
      int emergencyVisitsCount,
      String? email,
      String? phone,
      String? avatarUrl,
      String? lang});

  $CompanyEntityCopyWith<$Res> get company;
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? jobTitle = null,
    Object? company = null,
    Object? scheduledVisitsCount = null,
    Object? maintenanceVisitsCount = null,
    Object? emergencyVisitsCount = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyEntity,
      scheduledVisitsCount: null == scheduledVisitsCount
          ? _value.scheduledVisitsCount
          : scheduledVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maintenanceVisitsCount: null == maintenanceVisitsCount
          ? _value.maintenanceVisitsCount
          : maintenanceVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      emergencyVisitsCount: null == emergencyVisitsCount
          ? _value.emergencyVisitsCount
          : emergencyVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyEntityCopyWith<$Res> get company {
    return $CompanyEntityCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('uid') int id,
      String name,
      String jobTitle,
      CompanyEntity company,
      int scheduledVisitsCount,
      int maintenanceVisitsCount,
      int emergencyVisitsCount,
      String? email,
      String? phone,
      String? avatarUrl,
      String? lang});

  @override
  $CompanyEntityCopyWith<$Res> get company;
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? jobTitle = null,
    Object? company = null,
    Object? scheduledVisitsCount = null,
    Object? maintenanceVisitsCount = null,
    Object? emergencyVisitsCount = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
    Object? lang = freezed,
  }) {
    return _then(_$_UserEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyEntity,
      scheduledVisitsCount: null == scheduledVisitsCount
          ? _value.scheduledVisitsCount
          : scheduledVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      maintenanceVisitsCount: null == maintenanceVisitsCount
          ? _value.maintenanceVisitsCount
          : maintenanceVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      emergencyVisitsCount: null == emergencyVisitsCount
          ? _value.emergencyVisitsCount
          : emergencyVisitsCount // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity extends _UserEntity {
  _$_UserEntity(
      {@JsonValue('uid') required this.id,
      required this.name,
      required this.jobTitle,
      required this.company,
      this.scheduledVisitsCount = 0,
      this.maintenanceVisitsCount = 0,
      this.emergencyVisitsCount = 0,
      this.email,
      this.phone,
      this.avatarUrl,
      this.lang})
      : super._();

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  @JsonValue('uid')
  final int id;
  @override
  final String name;
  @override
  final String jobTitle;
  @override
  final CompanyEntity company;
  @override
  @JsonKey()
  final int scheduledVisitsCount;
  @override
  @JsonKey()
  final int maintenanceVisitsCount;
  @override
  @JsonKey()
  final int emergencyVisitsCount;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? avatarUrl;
  @override
  final String? lang;

  @override
  String toString() {
    return 'UserEntity(id: $id, name: $name, jobTitle: $jobTitle, company: $company, scheduledVisitsCount: $scheduledVisitsCount, maintenanceVisitsCount: $maintenanceVisitsCount, emergencyVisitsCount: $emergencyVisitsCount, email: $email, phone: $phone, avatarUrl: $avatarUrl, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.scheduledVisitsCount, scheduledVisitsCount) ||
                other.scheduledVisitsCount == scheduledVisitsCount) &&
            (identical(other.maintenanceVisitsCount, maintenanceVisitsCount) ||
                other.maintenanceVisitsCount == maintenanceVisitsCount) &&
            (identical(other.emergencyVisitsCount, emergencyVisitsCount) ||
                other.emergencyVisitsCount == emergencyVisitsCount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      jobTitle,
      company,
      scheduledVisitsCount,
      maintenanceVisitsCount,
      emergencyVisitsCount,
      email,
      phone,
      avatarUrl,
      lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity extends UserEntity {
  factory _UserEntity(
      {@JsonValue('uid') required final int id,
      required final String name,
      required final String jobTitle,
      required final CompanyEntity company,
      final int scheduledVisitsCount,
      final int maintenanceVisitsCount,
      final int emergencyVisitsCount,
      final String? email,
      final String? phone,
      final String? avatarUrl,
      final String? lang}) = _$_UserEntity;
  _UserEntity._() : super._();

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  @JsonValue('uid')
  int get id;
  @override
  String get name;
  @override
  String get jobTitle;
  @override
  CompanyEntity get company;
  @override
  int get scheduledVisitsCount;
  @override
  int get maintenanceVisitsCount;
  @override
  int get emergencyVisitsCount;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get avatarUrl;
  @override
  String? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
