// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentHistoryModel _$EquipmentHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _EquipmentHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentHistoryModel {
  DateTime get date => throw _privateConstructorUsedError;
  List<KpiModel> get kpis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentHistoryModelCopyWith<EquipmentHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentHistoryModelCopyWith<$Res> {
  factory $EquipmentHistoryModelCopyWith(EquipmentHistoryModel value,
          $Res Function(EquipmentHistoryModel) then) =
      _$EquipmentHistoryModelCopyWithImpl<$Res, EquipmentHistoryModel>;
  @useResult
  $Res call({DateTime date, List<KpiModel> kpis});
}

/// @nodoc
class _$EquipmentHistoryModelCopyWithImpl<$Res,
        $Val extends EquipmentHistoryModel>
    implements $EquipmentHistoryModelCopyWith<$Res> {
  _$EquipmentHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? kpis = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kpis: null == kpis
          ? _value.kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentHistoryModelCopyWith<$Res>
    implements $EquipmentHistoryModelCopyWith<$Res> {
  factory _$$_EquipmentHistoryModelCopyWith(_$_EquipmentHistoryModel value,
          $Res Function(_$_EquipmentHistoryModel) then) =
      __$$_EquipmentHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, List<KpiModel> kpis});
}

/// @nodoc
class __$$_EquipmentHistoryModelCopyWithImpl<$Res>
    extends _$EquipmentHistoryModelCopyWithImpl<$Res, _$_EquipmentHistoryModel>
    implements _$$_EquipmentHistoryModelCopyWith<$Res> {
  __$$_EquipmentHistoryModelCopyWithImpl(_$_EquipmentHistoryModel _value,
      $Res Function(_$_EquipmentHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? kpis = null,
  }) {
    return _then(_$_EquipmentHistoryModel(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      kpis: null == kpis
          ? _value._kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_EquipmentHistoryModel
    with DiagnosticableTreeMixin
    implements _EquipmentHistoryModel {
  const _$_EquipmentHistoryModel(
      {required this.date, final List<KpiModel> kpis = const []})
      : _kpis = kpis;

  factory _$_EquipmentHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentHistoryModelFromJson(json);

  @override
  final DateTime date;
  final List<KpiModel> _kpis;
  @override
  @JsonKey()
  List<KpiModel> get kpis {
    if (_kpis is EqualUnmodifiableListView) return _kpis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kpis);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EquipmentHistoryModel(date: $date, kpis: $kpis)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EquipmentHistoryModel'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('kpis', kpis));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentHistoryModel &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._kpis, _kpis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_kpis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentHistoryModelCopyWith<_$_EquipmentHistoryModel> get copyWith =>
      __$$_EquipmentHistoryModelCopyWithImpl<_$_EquipmentHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentHistoryModelToJson(
      this,
    );
  }
}

abstract class _EquipmentHistoryModel implements EquipmentHistoryModel {
  const factory _EquipmentHistoryModel(
      {required final DateTime date,
      final List<KpiModel> kpis}) = _$_EquipmentHistoryModel;

  factory _EquipmentHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_EquipmentHistoryModel.fromJson;

  @override
  DateTime get date;
  @override
  List<KpiModel> get kpis;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentHistoryModelCopyWith<_$_EquipmentHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
