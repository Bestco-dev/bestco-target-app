// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) {
  return _AttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentModelCopyWith<AttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentModelCopyWith<$Res> {
  factory $AttachmentModelCopyWith(
          AttachmentModel value, $Res Function(AttachmentModel) then) =
      _$AttachmentModelCopyWithImpl<$Res, AttachmentModel>;
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class _$AttachmentModelCopyWithImpl<$Res, $Val extends AttachmentModel>
    implements $AttachmentModelCopyWith<$Res> {
  _$AttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentModelCopyWith<$Res>
    implements $AttachmentModelCopyWith<$Res> {
  factory _$$_AttachmentModelCopyWith(
          _$_AttachmentModel value, $Res Function(_$_AttachmentModel) then) =
      __$$_AttachmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url});
}

/// @nodoc
class __$$_AttachmentModelCopyWithImpl<$Res>
    extends _$AttachmentModelCopyWithImpl<$Res, _$_AttachmentModel>
    implements _$$_AttachmentModelCopyWith<$Res> {
  __$$_AttachmentModelCopyWithImpl(
      _$_AttachmentModel _value, $Res Function(_$_AttachmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$_AttachmentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AttachmentModel extends _AttachmentModel with DiagnosticableTreeMixin {
  const _$_AttachmentModel({required this.id, required this.url}) : super._();

  factory _$_AttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentModelFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttachmentModel(id: $id, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttachmentModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentModelCopyWith<_$_AttachmentModel> get copyWith =>
      __$$_AttachmentModelCopyWithImpl<_$_AttachmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentModelToJson(
      this,
    );
  }
}

abstract class _AttachmentModel extends AttachmentModel {
  const factory _AttachmentModel(
      {required final int id, required final String url}) = _$_AttachmentModel;
  const _AttachmentModel._() : super._();

  factory _AttachmentModel.fromJson(Map<String, dynamic> json) =
      _$_AttachmentModel.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentModelCopyWith<_$_AttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
