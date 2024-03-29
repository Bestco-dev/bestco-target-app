// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionEntity _$QuestionEntityFromJson(Map<String, dynamic> json) {
  return _QuestionEntity.fromJson(json);
}

/// @nodoc
mixin _$QuestionEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  dynamic get values => throw _privateConstructorUsedError;
  dynamic get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "question_type")
  QuestionType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res, QuestionEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "value") dynamic values,
      dynamic answer,
      @JsonKey(name: "question_type") QuestionType type});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res, $Val extends QuestionEntity>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? values = freezed,
    Object? answer = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionEntityImplCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$$QuestionEntityImplCopyWith(_$QuestionEntityImpl value,
          $Res Function(_$QuestionEntityImpl) then) =
      __$$QuestionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: "value") dynamic values,
      dynamic answer,
      @JsonKey(name: "question_type") QuestionType type});
}

/// @nodoc
class __$$QuestionEntityImplCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res, _$QuestionEntityImpl>
    implements _$$QuestionEntityImplCopyWith<$Res> {
  __$$QuestionEntityImplCopyWithImpl(
      _$QuestionEntityImpl _value, $Res Function(_$QuestionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? values = freezed,
    Object? answer = freezed,
    Object? type = null,
  }) {
    return _then(_$QuestionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$QuestionEntityImpl extends _QuestionEntity
    with DiagnosticableTreeMixin {
  const _$QuestionEntityImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: "value") this.values,
      this.answer,
      @JsonKey(name: "question_type") required this.type})
      : super._();

  factory _$QuestionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: "value")
  final dynamic values;
  @override
  final dynamic answer;
  @override
  @JsonKey(name: "question_type")
  final QuestionType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionEntity(id: $id, title: $title, values: $values, answer: $answer, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('values', values))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.values, values) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(values),
      const DeepCollectionEquality().hash(answer),
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      __$$QuestionEntityImplCopyWithImpl<_$QuestionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionEntityImplToJson(
      this,
    );
  }
}

abstract class _QuestionEntity extends QuestionEntity {
  const factory _QuestionEntity(
          {required final int id,
          required final String title,
          @JsonKey(name: "value") final dynamic values,
          final dynamic answer,
          @JsonKey(name: "question_type") required final QuestionType type}) =
      _$QuestionEntityImpl;
  const _QuestionEntity._() : super._();

  factory _QuestionEntity.fromJson(Map<String, dynamic> json) =
      _$QuestionEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: "value")
  dynamic get values;
  @override
  dynamic get answer;
  @override
  @JsonKey(name: "question_type")
  QuestionType get type;
  @override
  @JsonKey(ignore: true)
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
