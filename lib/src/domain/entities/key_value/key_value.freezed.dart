// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KpiOptionModel _$KpiOptionModelFromJson(Map<String, dynamic> json) {
  return _KpiOptionModel.fromJson(json);
}

/// @nodoc
mixin _$KpiOptionModel {
  String get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiOptionModelCopyWith<KpiOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiOptionModelCopyWith<$Res> {
  factory $KpiOptionModelCopyWith(
          KpiOptionModel value, $Res Function(KpiOptionModel) then) =
      _$KpiOptionModelCopyWithImpl<$Res, KpiOptionModel>;
  @useResult
  $Res call({String key, String? value, String label, String? unit});
}

/// @nodoc
class _$KpiOptionModelCopyWithImpl<$Res, $Val extends KpiOptionModel>
    implements $KpiOptionModelCopyWith<$Res> {
  _$KpiOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? label = null,
    Object? unit = freezed,
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
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KpiOptionModelImplCopyWith<$Res>
    implements $KpiOptionModelCopyWith<$Res> {
  factory _$$KpiOptionModelImplCopyWith(_$KpiOptionModelImpl value,
          $Res Function(_$KpiOptionModelImpl) then) =
      __$$KpiOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String? value, String label, String? unit});
}

/// @nodoc
class __$$KpiOptionModelImplCopyWithImpl<$Res>
    extends _$KpiOptionModelCopyWithImpl<$Res, _$KpiOptionModelImpl>
    implements _$$KpiOptionModelImplCopyWith<$Res> {
  __$$KpiOptionModelImplCopyWithImpl(
      _$KpiOptionModelImpl _value, $Res Function(_$KpiOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? label = null,
    Object? unit = freezed,
  }) {
    return _then(_$KpiOptionModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KpiOptionModelImpl extends _KpiOptionModel
    with DiagnosticableTreeMixin {
  const _$KpiOptionModelImpl(
      {required this.key, this.value, required this.label, this.unit})
      : super._();

  factory _$KpiOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KpiOptionModelImplFromJson(json);

  @override
  final String key;
  @override
  final String? value;
  @override
  final String label;
  @override
  final String? unit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'KpiOptionModel(key: $key, value: $value, label: $label, unit: $unit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'KpiOptionModel'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KpiOptionModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, label, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KpiOptionModelImplCopyWith<_$KpiOptionModelImpl> get copyWith =>
      __$$KpiOptionModelImplCopyWithImpl<_$KpiOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KpiOptionModelImplToJson(
      this,
    );
  }
}

abstract class _KpiOptionModel extends KpiOptionModel {
  const factory _KpiOptionModel(
      {required final String key,
      final String? value,
      required final String label,
      final String? unit}) = _$KpiOptionModelImpl;
  const _KpiOptionModel._() : super._();

  factory _KpiOptionModel.fromJson(Map<String, dynamic> json) =
      _$KpiOptionModelImpl.fromJson;

  @override
  String get key;
  @override
  String? get value;
  @override
  String get label;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$KpiOptionModelImplCopyWith<_$KpiOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
