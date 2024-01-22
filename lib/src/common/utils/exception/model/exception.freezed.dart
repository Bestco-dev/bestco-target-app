// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExceptionModel _$ExceptionModelFromJson(Map<String, dynamic> json) {
  return _ExceptionModel.fromJson(json);
}

/// @nodoc
mixin _$ExceptionModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceptionModelCopyWith<ExceptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionModelCopyWith<$Res> {
  factory $ExceptionModelCopyWith(
          ExceptionModel value, $Res Function(ExceptionModel) then) =
      _$ExceptionModelCopyWithImpl<$Res, ExceptionModel>;
  @useResult
  $Res call({int? code, String? message, dynamic errors});
}

/// @nodoc
class _$ExceptionModelCopyWithImpl<$Res, $Val extends ExceptionModel>
    implements $ExceptionModelCopyWith<$Res> {
  _$ExceptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceptionModelImplCopyWith<$Res>
    implements $ExceptionModelCopyWith<$Res> {
  factory _$$ExceptionModelImplCopyWith(_$ExceptionModelImpl value,
          $Res Function(_$ExceptionModelImpl) then) =
      __$$ExceptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, dynamic errors});
}

/// @nodoc
class __$$ExceptionModelImplCopyWithImpl<$Res>
    extends _$ExceptionModelCopyWithImpl<$Res, _$ExceptionModelImpl>
    implements _$$ExceptionModelImplCopyWith<$Res> {
  __$$ExceptionModelImplCopyWithImpl(
      _$ExceptionModelImpl _value, $Res Function(_$ExceptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ExceptionModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExceptionModelImpl extends _ExceptionModel {
  _$ExceptionModelImpl({this.code, this.message, this.errors}) : super._();

  factory _$ExceptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExceptionModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'ExceptionModel(code: $code, message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceptionModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceptionModelImplCopyWith<_$ExceptionModelImpl> get copyWith =>
      __$$ExceptionModelImplCopyWithImpl<_$ExceptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExceptionModelImplToJson(
      this,
    );
  }
}

abstract class _ExceptionModel extends ExceptionModel {
  factory _ExceptionModel(
      {final int? code,
      final String? message,
      final dynamic errors}) = _$ExceptionModelImpl;
  _ExceptionModel._() : super._();

  factory _ExceptionModel.fromJson(Map<String, dynamic> json) =
      _$ExceptionModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  dynamic get errors;
  @override
  @JsonKey(ignore: true)
  _$$ExceptionModelImplCopyWith<_$ExceptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
