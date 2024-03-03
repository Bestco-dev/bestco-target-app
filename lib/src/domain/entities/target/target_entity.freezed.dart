// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TargetEntity _$TargetEntityFromJson(Map<String, dynamic> json) {
  return _TargetEntity.fromJson(json);
}

/// @nodoc
mixin _$TargetEntity {
  DateTime? get date => throw _privateConstructorUsedError;
  double get target => throw _privateConstructorUsedError;
  double get achieved => throw _privateConstructorUsedError;
  double get commission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetEntityCopyWith<TargetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetEntityCopyWith<$Res> {
  factory $TargetEntityCopyWith(
          TargetEntity value, $Res Function(TargetEntity) then) =
      _$TargetEntityCopyWithImpl<$Res, TargetEntity>;
  @useResult
  $Res call(
      {DateTime? date, double target, double achieved, double commission});
}

/// @nodoc
class _$TargetEntityCopyWithImpl<$Res, $Val extends TargetEntity>
    implements $TargetEntityCopyWith<$Res> {
  _$TargetEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? target = null,
    Object? achieved = null,
    Object? commission = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      achieved: null == achieved
          ? _value.achieved
          : achieved // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetEntityImplCopyWith<$Res>
    implements $TargetEntityCopyWith<$Res> {
  factory _$$TargetEntityImplCopyWith(
          _$TargetEntityImpl value, $Res Function(_$TargetEntityImpl) then) =
      __$$TargetEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? date, double target, double achieved, double commission});
}

/// @nodoc
class __$$TargetEntityImplCopyWithImpl<$Res>
    extends _$TargetEntityCopyWithImpl<$Res, _$TargetEntityImpl>
    implements _$$TargetEntityImplCopyWith<$Res> {
  __$$TargetEntityImplCopyWithImpl(
      _$TargetEntityImpl _value, $Res Function(_$TargetEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? target = null,
    Object? achieved = null,
    Object? commission = null,
  }) {
    return _then(_$TargetEntityImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as double,
      achieved: null == achieved
          ? _value.achieved
          : achieved // ignore: cast_nullable_to_non_nullable
              as double,
      commission: null == commission
          ? _value.commission
          : commission // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$TargetEntityImpl extends _TargetEntity with DiagnosticableTreeMixin {
  const _$TargetEntityImpl(
      {this.date, this.target = 0, this.achieved = 0, this.commission = 0})
      : super._();

  factory _$TargetEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetEntityImplFromJson(json);

  @override
  final DateTime? date;
  @override
  @JsonKey()
  final double target;
  @override
  @JsonKey()
  final double achieved;
  @override
  @JsonKey()
  final double commission;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TargetEntity(date: $date, target: $target, achieved: $achieved, commission: $commission)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TargetEntity'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('achieved', achieved))
      ..add(DiagnosticsProperty('commission', commission));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.achieved, achieved) ||
                other.achieved == achieved) &&
            (identical(other.commission, commission) ||
                other.commission == commission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, target, achieved, commission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetEntityImplCopyWith<_$TargetEntityImpl> get copyWith =>
      __$$TargetEntityImplCopyWithImpl<_$TargetEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetEntityImplToJson(
      this,
    );
  }
}

abstract class _TargetEntity extends TargetEntity {
  const factory _TargetEntity(
      {final DateTime? date,
      final double target,
      final double achieved,
      final double commission}) = _$TargetEntityImpl;
  const _TargetEntity._() : super._();

  factory _TargetEntity.fromJson(Map<String, dynamic> json) =
      _$TargetEntityImpl.fromJson;

  @override
  DateTime? get date;
  @override
  double get target;
  @override
  double get achieved;
  @override
  double get commission;
  @override
  @JsonKey(ignore: true)
  _$$TargetEntityImplCopyWith<_$TargetEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
