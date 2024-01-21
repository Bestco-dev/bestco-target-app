// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkSheetModel _$WorkSheetModelFromJson(Map<String, dynamic> json) {
  return _WorkSheetModel.fromJson(json);
}

/// @nodoc
mixin _$WorkSheetModel {
  String get data => throw _privateConstructorUsedError;
  WorksheetType get worksheetType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkSheetModelCopyWith<WorkSheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkSheetModelCopyWith<$Res> {
  factory $WorkSheetModelCopyWith(
          WorkSheetModel value, $Res Function(WorkSheetModel) then) =
      _$WorkSheetModelCopyWithImpl<$Res, WorkSheetModel>;
  @useResult
  $Res call({String data, WorksheetType worksheetType});
}

/// @nodoc
class _$WorkSheetModelCopyWithImpl<$Res, $Val extends WorkSheetModel>
    implements $WorkSheetModelCopyWith<$Res> {
  _$WorkSheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? worksheetType = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      worksheetType: null == worksheetType
          ? _value.worksheetType
          : worksheetType // ignore: cast_nullable_to_non_nullable
              as WorksheetType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkSheetModelCopyWith<$Res>
    implements $WorkSheetModelCopyWith<$Res> {
  factory _$$_WorkSheetModelCopyWith(
          _$_WorkSheetModel value, $Res Function(_$_WorkSheetModel) then) =
      __$$_WorkSheetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, WorksheetType worksheetType});
}

/// @nodoc
class __$$_WorkSheetModelCopyWithImpl<$Res>
    extends _$WorkSheetModelCopyWithImpl<$Res, _$_WorkSheetModel>
    implements _$$_WorkSheetModelCopyWith<$Res> {
  __$$_WorkSheetModelCopyWithImpl(
      _$_WorkSheetModel _value, $Res Function(_$_WorkSheetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? worksheetType = null,
  }) {
    return _then(_$_WorkSheetModel(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      worksheetType: null == worksheetType
          ? _value.worksheetType
          : worksheetType // ignore: cast_nullable_to_non_nullable
              as WorksheetType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_WorkSheetModel
    with DiagnosticableTreeMixin
    implements _WorkSheetModel {
  const _$_WorkSheetModel({required this.data, required this.worksheetType});

  factory _$_WorkSheetModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkSheetModelFromJson(json);

  @override
  final String data;
  @override
  final WorksheetType worksheetType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkSheetModel(data: $data, worksheetType: $worksheetType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkSheetModel'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('worksheetType', worksheetType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkSheetModel &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.worksheetType, worksheetType) ||
                other.worksheetType == worksheetType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, worksheetType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkSheetModelCopyWith<_$_WorkSheetModel> get copyWith =>
      __$$_WorkSheetModelCopyWithImpl<_$_WorkSheetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkSheetModelToJson(
      this,
    );
  }
}

abstract class _WorkSheetModel implements WorkSheetModel {
  const factory _WorkSheetModel(
      {required final String data,
      required final WorksheetType worksheetType}) = _$_WorkSheetModel;

  factory _WorkSheetModel.fromJson(Map<String, dynamic> json) =
      _$_WorkSheetModel.fromJson;

  @override
  String get data;
  @override
  WorksheetType get worksheetType;
  @override
  @JsonKey(ignore: true)
  _$$_WorkSheetModelCopyWith<_$_WorkSheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
