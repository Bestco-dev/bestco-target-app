// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) {
  return _SystemModel.fromJson(json);
}

/// @nodoc
mixin _$SystemModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  FailureType? get failureType => throw _privateConstructorUsedError;
  DateTime get lastCheckUp => throw _privateConstructorUsedError;
  List<TestRequirementModel> get testEquipments =>
      throw _privateConstructorUsedError;
  List<SafetyRequirementModel> get safetyEquipments =>
      throw _privateConstructorUsedError;
  List<KpiModel> get genericKpis => throw _privateConstructorUsedError;
  List<EquipmentModel> get equipments => throw _privateConstructorUsedError;

  ///refactor
  int? get recurringInterval => throw _privateConstructorUsedError;
  RecurringRuleType? get recurringRuleType =>
      throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  int? get gracePeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemModelCopyWith<SystemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemModelCopyWith<$Res> {
  factory $SystemModelCopyWith(
          SystemModel value, $Res Function(SystemModel) then) =
      _$SystemModelCopyWithImpl<$Res, SystemModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      FailureType? failureType,
      DateTime lastCheckUp,
      List<TestRequirementModel> testEquipments,
      List<SafetyRequirementModel> safetyEquipments,
      List<KpiModel> genericKpis,
      List<EquipmentModel> equipments,
      int? recurringInterval,
      RecurringRuleType? recurringRuleType,
      int? sequence,
      int? gracePeriod});
}

/// @nodoc
class _$SystemModelCopyWithImpl<$Res, $Val extends SystemModel>
    implements $SystemModelCopyWith<$Res> {
  _$SystemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? failureType = freezed,
    Object? lastCheckUp = null,
    Object? testEquipments = null,
    Object? safetyEquipments = null,
    Object? genericKpis = null,
    Object? equipments = null,
    Object? recurringInterval = freezed,
    Object? recurringRuleType = freezed,
    Object? sequence = freezed,
    Object? gracePeriod = freezed,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      failureType: freezed == failureType
          ? _value.failureType
          : failureType // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      lastCheckUp: null == lastCheckUp
          ? _value.lastCheckUp
          : lastCheckUp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      testEquipments: null == testEquipments
          ? _value.testEquipments
          : testEquipments // ignore: cast_nullable_to_non_nullable
              as List<TestRequirementModel>,
      safetyEquipments: null == safetyEquipments
          ? _value.safetyEquipments
          : safetyEquipments // ignore: cast_nullable_to_non_nullable
              as List<SafetyRequirementModel>,
      genericKpis: null == genericKpis
          ? _value.genericKpis
          : genericKpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
      equipments: null == equipments
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      recurringInterval: freezed == recurringInterval
          ? _value.recurringInterval
          : recurringInterval // ignore: cast_nullable_to_non_nullable
              as int?,
      recurringRuleType: freezed == recurringRuleType
          ? _value.recurringRuleType
          : recurringRuleType // ignore: cast_nullable_to_non_nullable
              as RecurringRuleType?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      gracePeriod: freezed == gracePeriod
          ? _value.gracePeriod
          : gracePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SystemModelCopyWith<$Res>
    implements $SystemModelCopyWith<$Res> {
  factory _$$_SystemModelCopyWith(
          _$_SystemModel value, $Res Function(_$_SystemModel) then) =
      __$$_SystemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      FailureType? failureType,
      DateTime lastCheckUp,
      List<TestRequirementModel> testEquipments,
      List<SafetyRequirementModel> safetyEquipments,
      List<KpiModel> genericKpis,
      List<EquipmentModel> equipments,
      int? recurringInterval,
      RecurringRuleType? recurringRuleType,
      int? sequence,
      int? gracePeriod});
}

/// @nodoc
class __$$_SystemModelCopyWithImpl<$Res>
    extends _$SystemModelCopyWithImpl<$Res, _$_SystemModel>
    implements _$$_SystemModelCopyWith<$Res> {
  __$$_SystemModelCopyWithImpl(
      _$_SystemModel _value, $Res Function(_$_SystemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? failureType = freezed,
    Object? lastCheckUp = null,
    Object? testEquipments = null,
    Object? safetyEquipments = null,
    Object? genericKpis = null,
    Object? equipments = null,
    Object? recurringInterval = freezed,
    Object? recurringRuleType = freezed,
    Object? sequence = freezed,
    Object? gracePeriod = freezed,
  }) {
    return _then(_$_SystemModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      failureType: freezed == failureType
          ? _value.failureType
          : failureType // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      lastCheckUp: null == lastCheckUp
          ? _value.lastCheckUp
          : lastCheckUp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      testEquipments: null == testEquipments
          ? _value._testEquipments
          : testEquipments // ignore: cast_nullable_to_non_nullable
              as List<TestRequirementModel>,
      safetyEquipments: null == safetyEquipments
          ? _value._safetyEquipments
          : safetyEquipments // ignore: cast_nullable_to_non_nullable
              as List<SafetyRequirementModel>,
      genericKpis: null == genericKpis
          ? _value._genericKpis
          : genericKpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
      equipments: null == equipments
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      recurringInterval: freezed == recurringInterval
          ? _value.recurringInterval
          : recurringInterval // ignore: cast_nullable_to_non_nullable
              as int?,
      recurringRuleType: freezed == recurringRuleType
          ? _value.recurringRuleType
          : recurringRuleType // ignore: cast_nullable_to_non_nullable
              as RecurringRuleType?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      gracePeriod: freezed == gracePeriod
          ? _value.gracePeriod
          : gracePeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SystemModel extends _SystemModel {
  _$_SystemModel(
      {required this.id,
      required this.name,
      this.image = '',
      this.failureType,
      required this.lastCheckUp,
      final List<TestRequirementModel> testEquipments = const [],
      final List<SafetyRequirementModel> safetyEquipments = const [],
      final List<KpiModel> genericKpis = const [],
      final List<EquipmentModel> equipments = const [],
      this.recurringInterval,
      this.recurringRuleType,
      this.sequence,
      this.gracePeriod})
      : _testEquipments = testEquipments,
        _safetyEquipments = safetyEquipments,
        _genericKpis = genericKpis,
        _equipments = equipments,
        super._();

  factory _$_SystemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SystemModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  final FailureType? failureType;
  @override
  final DateTime lastCheckUp;
  final List<TestRequirementModel> _testEquipments;
  @override
  @JsonKey()
  List<TestRequirementModel> get testEquipments {
    if (_testEquipments is EqualUnmodifiableListView) return _testEquipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testEquipments);
  }

  final List<SafetyRequirementModel> _safetyEquipments;
  @override
  @JsonKey()
  List<SafetyRequirementModel> get safetyEquipments {
    if (_safetyEquipments is EqualUnmodifiableListView)
      return _safetyEquipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_safetyEquipments);
  }

  final List<KpiModel> _genericKpis;
  @override
  @JsonKey()
  List<KpiModel> get genericKpis {
    if (_genericKpis is EqualUnmodifiableListView) return _genericKpis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genericKpis);
  }

  final List<EquipmentModel> _equipments;
  @override
  @JsonKey()
  List<EquipmentModel> get equipments {
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipments);
  }

  ///refactor
  @override
  final int? recurringInterval;
  @override
  final RecurringRuleType? recurringRuleType;
  @override
  final int? sequence;
  @override
  final int? gracePeriod;

  @override
  String toString() {
    return 'SystemModel(id: $id, name: $name, image: $image, failureType: $failureType, lastCheckUp: $lastCheckUp, testEquipments: $testEquipments, safetyEquipments: $safetyEquipments, genericKpis: $genericKpis, equipments: $equipments, recurringInterval: $recurringInterval, recurringRuleType: $recurringRuleType, sequence: $sequence, gracePeriod: $gracePeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.failureType, failureType) ||
                other.failureType == failureType) &&
            (identical(other.lastCheckUp, lastCheckUp) ||
                other.lastCheckUp == lastCheckUp) &&
            const DeepCollectionEquality()
                .equals(other._testEquipments, _testEquipments) &&
            const DeepCollectionEquality()
                .equals(other._safetyEquipments, _safetyEquipments) &&
            const DeepCollectionEquality()
                .equals(other._genericKpis, _genericKpis) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
            (identical(other.recurringInterval, recurringInterval) ||
                other.recurringInterval == recurringInterval) &&
            (identical(other.recurringRuleType, recurringRuleType) ||
                other.recurringRuleType == recurringRuleType) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.gracePeriod, gracePeriod) ||
                other.gracePeriod == gracePeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      failureType,
      lastCheckUp,
      const DeepCollectionEquality().hash(_testEquipments),
      const DeepCollectionEquality().hash(_safetyEquipments),
      const DeepCollectionEquality().hash(_genericKpis),
      const DeepCollectionEquality().hash(_equipments),
      recurringInterval,
      recurringRuleType,
      sequence,
      gracePeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SystemModelCopyWith<_$_SystemModel> get copyWith =>
      __$$_SystemModelCopyWithImpl<_$_SystemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemModelToJson(
      this,
    );
  }
}

abstract class _SystemModel extends SystemModel {
  factory _SystemModel(
      {required final int id,
      required final String name,
      final String image,
      final FailureType? failureType,
      required final DateTime lastCheckUp,
      final List<TestRequirementModel> testEquipments,
      final List<SafetyRequirementModel> safetyEquipments,
      final List<KpiModel> genericKpis,
      final List<EquipmentModel> equipments,
      final int? recurringInterval,
      final RecurringRuleType? recurringRuleType,
      final int? sequence,
      final int? gracePeriod}) = _$_SystemModel;
  _SystemModel._() : super._();

  factory _SystemModel.fromJson(Map<String, dynamic> json) =
      _$_SystemModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  FailureType? get failureType;
  @override
  DateTime get lastCheckUp;
  @override
  List<TestRequirementModel> get testEquipments;
  @override
  List<SafetyRequirementModel> get safetyEquipments;
  @override
  List<KpiModel> get genericKpis;
  @override
  List<EquipmentModel> get equipments;
  @override

  ///refactor
  int? get recurringInterval;
  @override
  RecurringRuleType? get recurringRuleType;
  @override
  int? get sequence;
  @override
  int? get gracePeriod;
  @override
  @JsonKey(ignore: true)
  _$$_SystemModelCopyWith<_$_SystemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
