// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitStatusModel _$VisitStatusModelFromJson(Map<String, dynamic> json) {
  return _VisitStatusModel.fromJson(json);
}

/// @nodoc
mixin _$VisitStatusModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitStatusModelCopyWith<VisitStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitStatusModelCopyWith<$Res> {
  factory $VisitStatusModelCopyWith(
          VisitStatusModel value, $Res Function(VisitStatusModel) then) =
      _$VisitStatusModelCopyWithImpl<$Res, VisitStatusModel>;
  @useResult
  $Res call({int id, String name, bool done});
}

/// @nodoc
class _$VisitStatusModelCopyWithImpl<$Res, $Val extends VisitStatusModel>
    implements $VisitStatusModelCopyWith<$Res> {
  _$VisitStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
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
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitStatusModelCopyWith<$Res>
    implements $VisitStatusModelCopyWith<$Res> {
  factory _$$_VisitStatusModelCopyWith(
          _$_VisitStatusModel value, $Res Function(_$_VisitStatusModel) then) =
      __$$_VisitStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, bool done});
}

/// @nodoc
class __$$_VisitStatusModelCopyWithImpl<$Res>
    extends _$VisitStatusModelCopyWithImpl<$Res, _$_VisitStatusModel>
    implements _$$_VisitStatusModelCopyWith<$Res> {
  __$$_VisitStatusModelCopyWithImpl(
      _$_VisitStatusModel _value, $Res Function(_$_VisitStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? done = null,
  }) {
    return _then(_$_VisitStatusModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_VisitStatusModel extends _VisitStatusModel
    with DiagnosticableTreeMixin {
  const _$_VisitStatusModel(
      {required this.id, required this.name, this.done = false})
      : super._();

  factory _$_VisitStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_VisitStatusModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisitStatusModel(id: $id, name: $name, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisitStatusModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('done', done));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitStatusModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitStatusModelCopyWith<_$_VisitStatusModel> get copyWith =>
      __$$_VisitStatusModelCopyWithImpl<_$_VisitStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitStatusModelToJson(
      this,
    );
  }
}

abstract class _VisitStatusModel extends VisitStatusModel {
  const factory _VisitStatusModel(
      {required final int id,
      required final String name,
      final bool done}) = _$_VisitStatusModel;
  const _VisitStatusModel._() : super._();

  factory _VisitStatusModel.fromJson(Map<String, dynamic> json) =
      _$_VisitStatusModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$$_VisitStatusModelCopyWith<_$_VisitStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
