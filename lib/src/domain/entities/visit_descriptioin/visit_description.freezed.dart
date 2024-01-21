// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitDescriptionModel _$VisitDescriptionModelFromJson(
    Map<String, dynamic> json) {
  return _VisitDescription.fromJson(json);
}

/// @nodoc
mixin _$VisitDescriptionModel {
  String get description => throw _privateConstructorUsedError;
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  List<AttachmentModel> get voiceRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitDescriptionModelCopyWith<VisitDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitDescriptionModelCopyWith<$Res> {
  factory $VisitDescriptionModelCopyWith(VisitDescriptionModel value,
          $Res Function(VisitDescriptionModel) then) =
      _$VisitDescriptionModelCopyWithImpl<$Res, VisitDescriptionModel>;
  @useResult
  $Res call(
      {String description,
      List<AttachmentModel> attachments,
      List<AttachmentModel> voiceRecords});
}

/// @nodoc
class _$VisitDescriptionModelCopyWithImpl<$Res,
        $Val extends VisitDescriptionModel>
    implements $VisitDescriptionModelCopyWith<$Res> {
  _$VisitDescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? attachments = null,
    Object? voiceRecords = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      voiceRecords: null == voiceRecords
          ? _value.voiceRecords
          : voiceRecords // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitDescriptionCopyWith<$Res>
    implements $VisitDescriptionModelCopyWith<$Res> {
  factory _$$_VisitDescriptionCopyWith(
          _$_VisitDescription value, $Res Function(_$_VisitDescription) then) =
      __$$_VisitDescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      List<AttachmentModel> attachments,
      List<AttachmentModel> voiceRecords});
}

/// @nodoc
class __$$_VisitDescriptionCopyWithImpl<$Res>
    extends _$VisitDescriptionModelCopyWithImpl<$Res, _$_VisitDescription>
    implements _$$_VisitDescriptionCopyWith<$Res> {
  __$$_VisitDescriptionCopyWithImpl(
      _$_VisitDescription _value, $Res Function(_$_VisitDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? attachments = null,
    Object? voiceRecords = null,
  }) {
    return _then(_$_VisitDescription(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      voiceRecords: null == voiceRecords
          ? _value._voiceRecords
          : voiceRecords // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_VisitDescription
    with DiagnosticableTreeMixin
    implements _VisitDescription {
  const _$_VisitDescription(
      {this.description = '',
      final List<AttachmentModel> attachments = const [],
      final List<AttachmentModel> voiceRecords = const []})
      : _attachments = attachments,
        _voiceRecords = voiceRecords;

  factory _$_VisitDescription.fromJson(Map<String, dynamic> json) =>
      _$$_VisitDescriptionFromJson(json);

  @override
  @JsonKey()
  final String description;
  final List<AttachmentModel> _attachments;
  @override
  @JsonKey()
  List<AttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<AttachmentModel> _voiceRecords;
  @override
  @JsonKey()
  List<AttachmentModel> get voiceRecords {
    if (_voiceRecords is EqualUnmodifiableListView) return _voiceRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voiceRecords);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VisitDescriptionModel(description: $description, attachments: $attachments, voiceRecords: $voiceRecords)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VisitDescriptionModel'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('attachments', attachments))
      ..add(DiagnosticsProperty('voiceRecords', voiceRecords));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitDescription &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._voiceRecords, _voiceRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_voiceRecords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitDescriptionCopyWith<_$_VisitDescription> get copyWith =>
      __$$_VisitDescriptionCopyWithImpl<_$_VisitDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitDescriptionToJson(
      this,
    );
  }
}

abstract class _VisitDescription implements VisitDescriptionModel {
  const factory _VisitDescription(
      {final String description,
      final List<AttachmentModel> attachments,
      final List<AttachmentModel> voiceRecords}) = _$_VisitDescription;

  factory _VisitDescription.fromJson(Map<String, dynamic> json) =
      _$_VisitDescription.fromJson;

  @override
  String get description;
  @override
  List<AttachmentModel> get attachments;
  @override
  List<AttachmentModel> get voiceRecords;
  @override
  @JsonKey(ignore: true)
  _$$_VisitDescriptionCopyWith<_$_VisitDescription> get copyWith =>
      throw _privateConstructorUsedError;
}
