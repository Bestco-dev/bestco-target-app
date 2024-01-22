// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyValueOptionEntity _$KeyValueOptionEntityFromJson(Map<String, dynamic> json) {
  return _KeyValueOptionEntity.fromJson(json);
}

/// @nodoc
mixin _$KeyValueOptionEntity {
  String get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValueOptionEntityCopyWith<KeyValueOptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueOptionEntityCopyWith<$Res> {
  factory $KeyValueOptionEntityCopyWith(KeyValueOptionEntity value,
          $Res Function(KeyValueOptionEntity) then) =
      _$KeyValueOptionEntityCopyWithImpl<$Res, KeyValueOptionEntity>;
  @useResult
  $Res call({String key, String? value});
}

/// @nodoc
class _$KeyValueOptionEntityCopyWithImpl<$Res,
        $Val extends KeyValueOptionEntity>
    implements $KeyValueOptionEntityCopyWith<$Res> {
  _$KeyValueOptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyValueOptionEntityImplCopyWith<$Res>
    implements $KeyValueOptionEntityCopyWith<$Res> {
  factory _$$KeyValueOptionEntityImplCopyWith(_$KeyValueOptionEntityImpl value,
          $Res Function(_$KeyValueOptionEntityImpl) then) =
      __$$KeyValueOptionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String? value});
}

/// @nodoc
class __$$KeyValueOptionEntityImplCopyWithImpl<$Res>
    extends _$KeyValueOptionEntityCopyWithImpl<$Res, _$KeyValueOptionEntityImpl>
    implements _$$KeyValueOptionEntityImplCopyWith<$Res> {
  __$$KeyValueOptionEntityImplCopyWithImpl(_$KeyValueOptionEntityImpl _value,
      $Res Function(_$KeyValueOptionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
  }) {
    return _then(_$KeyValueOptionEntityImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$KeyValueOptionEntityImpl
    with DiagnosticableTreeMixin
    implements _KeyValueOptionEntity {
  const _$KeyValueOptionEntityImpl({required this.key, this.value});

  factory _$KeyValueOptionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueOptionEntityImplFromJson(json);

  @override
  final String key;
  @override
  final String? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KeyValueOptionEntity(key: $key, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KeyValueOptionEntity'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueOptionEntityImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueOptionEntityImplCopyWith<_$KeyValueOptionEntityImpl>
      get copyWith =>
          __$$KeyValueOptionEntityImplCopyWithImpl<_$KeyValueOptionEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueOptionEntityImplToJson(
      this,
    );
  }
}

abstract class _KeyValueOptionEntity implements KeyValueOptionEntity {
  const factory _KeyValueOptionEntity(
      {required final String key,
      final String? value}) = _$KeyValueOptionEntityImpl;

  factory _KeyValueOptionEntity.fromJson(Map<String, dynamic> json) =
      _$KeyValueOptionEntityImpl.fromJson;

  @override
  String get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$KeyValueOptionEntityImplCopyWith<_$KeyValueOptionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
