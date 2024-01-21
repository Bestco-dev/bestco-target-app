// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SafetyRequirementModel _$SafetyRequirementModelFromJson(
    Map<String, dynamic> json) {
  return _SafetyRequirementModel.fromJson(json);
}

/// @nodoc
mixin _$SafetyRequirementModel {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SafetyRequirementModelCopyWith<SafetyRequirementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafetyRequirementModelCopyWith<$Res> {
  factory $SafetyRequirementModelCopyWith(SafetyRequirementModel value,
          $Res Function(SafetyRequirementModel) then) =
      _$SafetyRequirementModelCopyWithImpl<$Res, SafetyRequirementModel>;
  @useResult
  $Res call(
      {int id, String? image, String name, String? description, int? sequence});
}

/// @nodoc
class _$SafetyRequirementModelCopyWithImpl<$Res,
        $Val extends SafetyRequirementModel>
    implements $SafetyRequirementModelCopyWith<$Res> {
  _$SafetyRequirementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? sequence = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SafetyRequirementModelCopyWith<$Res>
    implements $SafetyRequirementModelCopyWith<$Res> {
  factory _$$_SafetyRequirementModelCopyWith(_$_SafetyRequirementModel value,
          $Res Function(_$_SafetyRequirementModel) then) =
      __$$_SafetyRequirementModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? image, String name, String? description, int? sequence});
}

/// @nodoc
class __$$_SafetyRequirementModelCopyWithImpl<$Res>
    extends _$SafetyRequirementModelCopyWithImpl<$Res,
        _$_SafetyRequirementModel>
    implements _$$_SafetyRequirementModelCopyWith<$Res> {
  __$$_SafetyRequirementModelCopyWithImpl(_$_SafetyRequirementModel _value,
      $Res Function(_$_SafetyRequirementModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? sequence = freezed,
  }) {
    return _then(_$_SafetyRequirementModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SafetyRequirementModel
    with DiagnosticableTreeMixin
    implements _SafetyRequirementModel {
  const _$_SafetyRequirementModel(
      {required this.id,
      this.image,
      required this.name,
      this.description,
      this.sequence});

  factory _$_SafetyRequirementModel.fromJson(Map<String, dynamic> json) =>
      _$$_SafetyRequirementModelFromJson(json);

  @override
  final int id;
  @override
  final String? image;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int? sequence;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SafetyRequirementModel(id: $id, image: $image, name: $name, description: $description, sequence: $sequence)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SafetyRequirementModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sequence', sequence));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SafetyRequirementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, name, description, sequence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SafetyRequirementModelCopyWith<_$_SafetyRequirementModel> get copyWith =>
      __$$_SafetyRequirementModelCopyWithImpl<_$_SafetyRequirementModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SafetyRequirementModelToJson(
      this,
    );
  }
}

abstract class _SafetyRequirementModel implements SafetyRequirementModel {
  const factory _SafetyRequirementModel(
      {required final int id,
      final String? image,
      required final String name,
      final String? description,
      final int? sequence}) = _$_SafetyRequirementModel;

  factory _SafetyRequirementModel.fromJson(Map<String, dynamic> json) =
      _$_SafetyRequirementModel.fromJson;

  @override
  int get id;
  @override
  String? get image;
  @override
  String get name;
  @override
  String? get description;
  @override
  int? get sequence;
  @override
  @JsonKey(ignore: true)
  _$$_SafetyRequirementModelCopyWith<_$_SafetyRequirementModel> get copyWith =>
      throw _privateConstructorUsedError;
}
