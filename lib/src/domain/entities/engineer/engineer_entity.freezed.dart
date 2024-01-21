// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'engineer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EngineerEntity _$EngineerEntityFromJson(Map<String, dynamic> json) {
  return _EngineerEntity.fromJson(json);
}

/// @nodoc
mixin _$EngineerEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngineerEntityCopyWith<EngineerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineerEntityCopyWith<$Res> {
  factory $EngineerEntityCopyWith(
          EngineerEntity value, $Res Function(EngineerEntity) then) =
      _$EngineerEntityCopyWithImpl<$Res, EngineerEntity>;
  @useResult
  $Res call({int id, String name, String avatarUrl, String phone});
}

/// @nodoc
class _$EngineerEntityCopyWithImpl<$Res, $Val extends EngineerEntity>
    implements $EngineerEntityCopyWith<$Res> {
  _$EngineerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? phone = null,
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
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EngineerEntityCopyWith<$Res>
    implements $EngineerEntityCopyWith<$Res> {
  factory _$$_EngineerEntityCopyWith(
          _$_EngineerEntity value, $Res Function(_$_EngineerEntity) then) =
      __$$_EngineerEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String avatarUrl, String phone});
}

/// @nodoc
class __$$_EngineerEntityCopyWithImpl<$Res>
    extends _$EngineerEntityCopyWithImpl<$Res, _$_EngineerEntity>
    implements _$$_EngineerEntityCopyWith<$Res> {
  __$$_EngineerEntityCopyWithImpl(
      _$_EngineerEntity _value, $Res Function(_$_EngineerEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? phone = null,
  }) {
    return _then(_$_EngineerEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EngineerEntity
    with DiagnosticableTreeMixin
    implements _EngineerEntity {
  const _$_EngineerEntity(
      {required this.id,
      required this.name,
      this.avatarUrl = '',
      this.phone = ''});

  factory _$_EngineerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_EngineerEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  @JsonKey()
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EngineerEntity(id: $id, name: $name, avatarUrl: $avatarUrl, phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EngineerEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EngineerEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EngineerEntityCopyWith<_$_EngineerEntity> get copyWith =>
      __$$_EngineerEntityCopyWithImpl<_$_EngineerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngineerEntityToJson(
      this,
    );
  }
}

abstract class _EngineerEntity implements EngineerEntity {
  const factory _EngineerEntity(
      {required final int id,
      required final String name,
      final String avatarUrl,
      final String phone}) = _$_EngineerEntity;

  factory _EngineerEntity.fromJson(Map<String, dynamic> json) =
      _$_EngineerEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_EngineerEntityCopyWith<_$_EngineerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
