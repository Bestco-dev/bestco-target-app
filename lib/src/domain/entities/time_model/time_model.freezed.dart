// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) {
  return _TimeModel.fromJson(json);
}

/// @nodoc
mixin _$TimeModel {
  String get time => throw _privateConstructorUsedError;
  TimeType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res, TimeModel>;
  @useResult
  $Res call({String time, TimeType type});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res, $Val extends TimeModel>
    implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeModelImplCopyWith<$Res>
    implements $TimeModelCopyWith<$Res> {
  factory _$$TimeModelImplCopyWith(
          _$TimeModelImpl value, $Res Function(_$TimeModelImpl) then) =
      __$$TimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, TimeType type});
}

/// @nodoc
class __$$TimeModelImplCopyWithImpl<$Res>
    extends _$TimeModelCopyWithImpl<$Res, _$TimeModelImpl>
    implements _$$TimeModelImplCopyWith<$Res> {
  __$$TimeModelImplCopyWithImpl(
      _$TimeModelImpl _value, $Res Function(_$TimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? type = null,
  }) {
    return _then(_$TimeModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TimeType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$TimeModelImpl with DiagnosticableTreeMixin implements _TimeModel {
  const _$TimeModelImpl({required this.time, this.type = TimeType.am});

  factory _$TimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeModelImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey()
  final TimeType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeModel(time: $time, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeModel'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeModelImplCopyWith<_$TimeModelImpl> get copyWith =>
      __$$TimeModelImplCopyWithImpl<_$TimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeModelImplToJson(
      this,
    );
  }
}

abstract class _TimeModel implements TimeModel {
  const factory _TimeModel({required final String time, final TimeType type}) =
      _$TimeModelImpl;

  factory _TimeModel.fromJson(Map<String, dynamic> json) =
      _$TimeModelImpl.fromJson;

  @override
  String get time;
  @override
  TimeType get type;
  @override
  @JsonKey(ignore: true)
  _$$TimeModelImplCopyWith<_$TimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
