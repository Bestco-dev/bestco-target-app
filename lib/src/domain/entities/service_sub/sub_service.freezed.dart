// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubServiceEntity _$SubServiceEntityFromJson(Map<String, dynamic> json) {
  return _SubServiceEntity.fromJson(json);
}

/// @nodoc
mixin _$SubServiceEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<QuestionEntity> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubServiceEntityCopyWith<SubServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServiceEntityCopyWith<$Res> {
  factory $SubServiceEntityCopyWith(
          SubServiceEntity value, $Res Function(SubServiceEntity) then) =
      _$SubServiceEntityCopyWithImpl<$Res, SubServiceEntity>;
  @useResult
  $Res call({int id, String name, List<QuestionEntity> questions});
}

/// @nodoc
class _$SubServiceEntityCopyWithImpl<$Res, $Val extends SubServiceEntity>
    implements $SubServiceEntityCopyWith<$Res> {
  _$SubServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? questions = null,
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
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubServiceEntityImplCopyWith<$Res>
    implements $SubServiceEntityCopyWith<$Res> {
  factory _$$SubServiceEntityImplCopyWith(_$SubServiceEntityImpl value,
          $Res Function(_$SubServiceEntityImpl) then) =
      __$$SubServiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<QuestionEntity> questions});
}

/// @nodoc
class __$$SubServiceEntityImplCopyWithImpl<$Res>
    extends _$SubServiceEntityCopyWithImpl<$Res, _$SubServiceEntityImpl>
    implements _$$SubServiceEntityImplCopyWith<$Res> {
  __$$SubServiceEntityImplCopyWithImpl(_$SubServiceEntityImpl _value,
      $Res Function(_$SubServiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? questions = null,
  }) {
    return _then(_$SubServiceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SubServiceEntityImpl
    with DiagnosticableTreeMixin
    implements _SubServiceEntity {
  const _$SubServiceEntityImpl(
      {required this.id,
      required this.name,
      final List<QuestionEntity> questions = const []})
      : _questions = questions;

  factory _$SubServiceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubServiceEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<QuestionEntity> _questions;
  @override
  @JsonKey()
  List<QuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubServiceEntity(id: $id, name: $name, questions: $questions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubServiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('questions', questions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServiceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubServiceEntityImplCopyWith<_$SubServiceEntityImpl> get copyWith =>
      __$$SubServiceEntityImplCopyWithImpl<_$SubServiceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubServiceEntityImplToJson(
      this,
    );
  }
}

abstract class _SubServiceEntity implements SubServiceEntity {
  const factory _SubServiceEntity(
      {required final int id,
      required final String name,
      final List<QuestionEntity> questions}) = _$SubServiceEntityImpl;

  factory _SubServiceEntity.fromJson(Map<String, dynamic> json) =
      _$SubServiceEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<QuestionEntity> get questions;
  @override
  @JsonKey(ignore: true)
  _$$SubServiceEntityImplCopyWith<_$SubServiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
