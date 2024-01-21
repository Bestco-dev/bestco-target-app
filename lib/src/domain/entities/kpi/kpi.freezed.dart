// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kpi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KpiModel _$KpiModelFromJson(Map<String, dynamic> json) {
  return _KpiModel.fromJson(json);
}

/// @nodoc
mixin _$KpiModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  FailureType? get failures => throw _privateConstructorUsedError;
  KpiMeasuermentType get measuermentType => throw _privateConstructorUsedError;
  List<KpiOptionModel> get options => throw _privateConstructorUsedError;
  KpiUsageModel? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KpiModelCopyWith<KpiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KpiModelCopyWith<$Res> {
  factory $KpiModelCopyWith(KpiModel value, $Res Function(KpiModel) then) =
      _$KpiModelCopyWithImpl<$Res, KpiModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      FailureType? failures,
      KpiMeasuermentType measuermentType,
      List<KpiOptionModel> options,
      KpiUsageModel? usage});

  $KpiUsageModelCopyWith<$Res>? get usage;
}

/// @nodoc
class _$KpiModelCopyWithImpl<$Res, $Val extends KpiModel>
    implements $KpiModelCopyWith<$Res> {
  _$KpiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? failures = freezed,
    Object? measuermentType = null,
    Object? options = null,
    Object? usage = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      measuermentType: null == measuermentType
          ? _value.measuermentType
          : measuermentType // ignore: cast_nullable_to_non_nullable
              as KpiMeasuermentType,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<KpiOptionModel>,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as KpiUsageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KpiUsageModelCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $KpiUsageModelCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_KpiModelCopyWith<$Res> implements $KpiModelCopyWith<$Res> {
  factory _$$_KpiModelCopyWith(
          _$_KpiModel value, $Res Function(_$_KpiModel) then) =
      __$$_KpiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? description,
      FailureType? failures,
      KpiMeasuermentType measuermentType,
      List<KpiOptionModel> options,
      KpiUsageModel? usage});

  @override
  $KpiUsageModelCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$_KpiModelCopyWithImpl<$Res>
    extends _$KpiModelCopyWithImpl<$Res, _$_KpiModel>
    implements _$$_KpiModelCopyWith<$Res> {
  __$$_KpiModelCopyWithImpl(
      _$_KpiModel _value, $Res Function(_$_KpiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? failures = freezed,
    Object? measuermentType = null,
    Object? options = null,
    Object? usage = freezed,
  }) {
    return _then(_$_KpiModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      measuermentType: null == measuermentType
          ? _value.measuermentType
          : measuermentType // ignore: cast_nullable_to_non_nullable
              as KpiMeasuermentType,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<KpiOptionModel>,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as KpiUsageModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_KpiModel extends _KpiModel {
  _$_KpiModel(
      {required this.id,
      required this.name,
      this.description,
      this.failures,
      required this.measuermentType,
      final List<KpiOptionModel> options = const [],
      this.usage})
      : _options = options,
        super._();

  factory _$_KpiModel.fromJson(Map<String, dynamic> json) =>
      _$$_KpiModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final FailureType? failures;
  @override
  final KpiMeasuermentType measuermentType;
  final List<KpiOptionModel> _options;
  @override
  @JsonKey()
  List<KpiOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final KpiUsageModel? usage;

  @override
  String toString() {
    return 'KpiModel(id: $id, name: $name, description: $description, failures: $failures, measuermentType: $measuermentType, options: $options, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KpiModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.failures, failures) ||
                other.failures == failures) &&
            (identical(other.measuermentType, measuermentType) ||
                other.measuermentType == measuermentType) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, failures,
      measuermentType, const DeepCollectionEquality().hash(_options), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KpiModelCopyWith<_$_KpiModel> get copyWith =>
      __$$_KpiModelCopyWithImpl<_$_KpiModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KpiModelToJson(
      this,
    );
  }
}

abstract class _KpiModel extends KpiModel {
  factory _KpiModel(
      {required final int id,
      required final String name,
      final String? description,
      final FailureType? failures,
      required final KpiMeasuermentType measuermentType,
      final List<KpiOptionModel> options,
      final KpiUsageModel? usage}) = _$_KpiModel;
  _KpiModel._() : super._();

  factory _KpiModel.fromJson(Map<String, dynamic> json) = _$_KpiModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  FailureType? get failures;
  @override
  KpiMeasuermentType get measuermentType;
  @override
  List<KpiOptionModel> get options;
  @override
  KpiUsageModel? get usage;
  @override
  @JsonKey(ignore: true)
  _$$_KpiModelCopyWith<_$_KpiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
