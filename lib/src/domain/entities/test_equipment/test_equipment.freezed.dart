// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestRequirementModel _$TestRequirementModelFromJson(Map<String, dynamic> json) {
  return _TestRequirementModel.fromJson(json);
}

/// @nodoc
mixin _$TestRequirementModel {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestRequirementModelCopyWith<TestRequirementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestRequirementModelCopyWith<$Res> {
  factory $TestRequirementModelCopyWith(TestRequirementModel value,
          $Res Function(TestRequirementModel) then) =
      _$TestRequirementModelCopyWithImpl<$Res, TestRequirementModel>;
  @useResult
  $Res call(
      {int id, String? image, String name, String? description, int? sequence});
}

/// @nodoc
class _$TestRequirementModelCopyWithImpl<$Res,
        $Val extends TestRequirementModel>
    implements $TestRequirementModelCopyWith<$Res> {
  _$TestRequirementModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TestRequirementModelCopyWith<$Res>
    implements $TestRequirementModelCopyWith<$Res> {
  factory _$$_TestRequirementModelCopyWith(_$_TestRequirementModel value,
          $Res Function(_$_TestRequirementModel) then) =
      __$$_TestRequirementModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String? image, String name, String? description, int? sequence});
}

/// @nodoc
class __$$_TestRequirementModelCopyWithImpl<$Res>
    extends _$TestRequirementModelCopyWithImpl<$Res, _$_TestRequirementModel>
    implements _$$_TestRequirementModelCopyWith<$Res> {
  __$$_TestRequirementModelCopyWithImpl(_$_TestRequirementModel _value,
      $Res Function(_$_TestRequirementModel) _then)
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
    return _then(_$_TestRequirementModel(
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

@JsonSerializable(explicitToJson: true)
class _$_TestRequirementModel extends _TestRequirementModel
    with DiagnosticableTreeMixin {
  const _$_TestRequirementModel(
      {required this.id,
      this.image,
      required this.name,
      this.description,
      this.sequence})
      : super._();

  factory _$_TestRequirementModel.fromJson(Map<String, dynamic> json) =>
      _$$_TestRequirementModelFromJson(json);

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
    return 'TestRequirementModel(id: $id, image: $image, name: $name, description: $description, sequence: $sequence)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestRequirementModel'))
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
            other is _$_TestRequirementModel &&
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
  _$$_TestRequirementModelCopyWith<_$_TestRequirementModel> get copyWith =>
      __$$_TestRequirementModelCopyWithImpl<_$_TestRequirementModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestRequirementModelToJson(
      this,
    );
  }
}

abstract class _TestRequirementModel extends TestRequirementModel {
  const factory _TestRequirementModel(
      {required final int id,
      final String? image,
      required final String name,
      final String? description,
      final int? sequence}) = _$_TestRequirementModel;
  const _TestRequirementModel._() : super._();

  factory _TestRequirementModel.fromJson(Map<String, dynamic> json) =
      _$_TestRequirementModel.fromJson;

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
  _$$_TestRequirementModelCopyWith<_$_TestRequirementModel> get copyWith =>
      throw _privateConstructorUsedError;
}
