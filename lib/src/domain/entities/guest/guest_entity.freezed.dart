// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestEntity _$GuestEntityFromJson(Map<String, dynamic> json) {
  return _GuestEntity.fromJson(json);
}

/// @nodoc
mixin _$GuestEntity {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  double? get experienceYears => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  UserType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestEntityCopyWith<GuestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestEntityCopyWith<$Res> {
  factory $GuestEntityCopyWith(
          GuestEntity value, $Res Function(GuestEntity) then) =
      _$GuestEntityCopyWithImpl<$Res, GuestEntity>;
  @useResult
  $Res call(
      {String name,
      String phone,
      double? experienceYears,
      String? city,
      UserType type});
}

/// @nodoc
class _$GuestEntityCopyWithImpl<$Res, $Val extends GuestEntity>
    implements $GuestEntityCopyWith<$Res> {
  _$GuestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? experienceYears = freezed,
    Object? city = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      experienceYears: freezed == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestEntityImplCopyWith<$Res>
    implements $GuestEntityCopyWith<$Res> {
  factory _$$GuestEntityImplCopyWith(
          _$GuestEntityImpl value, $Res Function(_$GuestEntityImpl) then) =
      __$$GuestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      double? experienceYears,
      String? city,
      UserType type});
}

/// @nodoc
class __$$GuestEntityImplCopyWithImpl<$Res>
    extends _$GuestEntityCopyWithImpl<$Res, _$GuestEntityImpl>
    implements _$$GuestEntityImplCopyWith<$Res> {
  __$$GuestEntityImplCopyWithImpl(
      _$GuestEntityImpl _value, $Res Function(_$GuestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? experienceYears = freezed,
    Object? city = freezed,
    Object? type = null,
  }) {
    return _then(_$GuestEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      experienceYears: freezed == experienceYears
          ? _value.experienceYears
          : experienceYears // ignore: cast_nullable_to_non_nullable
              as double?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GuestEntityImpl with DiagnosticableTreeMixin implements _GuestEntity {
  const _$GuestEntityImpl(
      {required this.name,
      required this.phone,
      this.experienceYears,
      this.city,
      this.type = UserType.saleperson});

  factory _$GuestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String phone;
  @override
  final double? experienceYears;
  @override
  final String? city;
  @override
  @JsonKey()
  final UserType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GuestEntity(name: $name, phone: $phone, experienceYears: $experienceYears, city: $city, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuestEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('experienceYears', experienceYears))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.experienceYears, experienceYears) ||
                other.experienceYears == experienceYears) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phone, experienceYears, city, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestEntityImplCopyWith<_$GuestEntityImpl> get copyWith =>
      __$$GuestEntityImplCopyWithImpl<_$GuestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestEntityImplToJson(
      this,
    );
  }
}

abstract class _GuestEntity implements GuestEntity {
  const factory _GuestEntity(
      {required final String name,
      required final String phone,
      final double? experienceYears,
      final String? city,
      final UserType type}) = _$GuestEntityImpl;

  factory _GuestEntity.fromJson(Map<String, dynamic> json) =
      _$GuestEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get phone;
  @override
  double? get experienceYears;
  @override
  String? get city;
  @override
  UserType get type;
  @override
  @JsonKey(ignore: true)
  _$$GuestEntityImplCopyWith<_$GuestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
