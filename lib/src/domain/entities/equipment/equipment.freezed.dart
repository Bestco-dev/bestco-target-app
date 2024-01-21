// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  dynamic get isGeneric => throw _privateConstructorUsedError;
  FailureType? get failures => throw _privateConstructorUsedError;
  List<AttachmentModel> get attachments => throw _privateConstructorUsedError;
  List<KpiModel> get kpis => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  List<File> get attachFiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res, EquipmentModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      dynamic isGeneric,
      FailureType? failures,
      List<AttachmentModel> attachments,
      List<KpiModel> kpis,
      @JsonKey(includeFromJson: false) List<File> attachFiles});
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res, $Val extends EquipmentModel>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? isGeneric = freezed,
    Object? failures = freezed,
    Object? attachments = null,
    Object? kpis = null,
    Object? attachFiles = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneric: freezed == isGeneric
          ? _value.isGeneric
          : isGeneric // ignore: cast_nullable_to_non_nullable
              as dynamic,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      kpis: null == kpis
          ? _value.kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
      attachFiles: null == attachFiles
          ? _value.attachFiles
          : attachFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentModelCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$_EquipmentModelCopyWith(
          _$_EquipmentModel value, $Res Function(_$_EquipmentModel) then) =
      __$$_EquipmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      dynamic isGeneric,
      FailureType? failures,
      List<AttachmentModel> attachments,
      List<KpiModel> kpis,
      @JsonKey(includeFromJson: false) List<File> attachFiles});
}

/// @nodoc
class __$$_EquipmentModelCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res, _$_EquipmentModel>
    implements _$$_EquipmentModelCopyWith<$Res> {
  __$$_EquipmentModelCopyWithImpl(
      _$_EquipmentModel _value, $Res Function(_$_EquipmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? isGeneric = freezed,
    Object? failures = freezed,
    Object? attachments = null,
    Object? kpis = null,
    Object? attachFiles = null,
  }) {
    return _then(_$_EquipmentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneric: freezed == isGeneric ? _value.isGeneric! : isGeneric,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as FailureType?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentModel>,
      kpis: null == kpis
          ? _value._kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as List<KpiModel>,
      attachFiles: null == attachFiles
          ? _value._attachFiles
          : attachFiles // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EquipmentModel extends _EquipmentModel {
  _$_EquipmentModel(
      {required this.id,
      required this.name,
      this.image = '',
      this.isGeneric = false,
      this.failures,
      final List<AttachmentModel> attachments = const [],
      final List<KpiModel> kpis = const [],
      @JsonKey(includeFromJson: false) final List<File> attachFiles = const []})
      : _attachments = attachments,
        _kpis = kpis,
        _attachFiles = attachFiles,
        super._();

  factory _$_EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final dynamic isGeneric;
  @override
  final FailureType? failures;
  final List<AttachmentModel> _attachments;
  @override
  @JsonKey()
  List<AttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<KpiModel> _kpis;
  @override
  @JsonKey()
  List<KpiModel> get kpis {
    if (_kpis is EqualUnmodifiableListView) return _kpis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kpis);
  }

  final List<File> _attachFiles;
  @override
  @JsonKey(includeFromJson: false)
  List<File> get attachFiles {
    if (_attachFiles is EqualUnmodifiableListView) return _attachFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachFiles);
  }

  @override
  String toString() {
    return 'EquipmentModel(id: $id, name: $name, image: $image, isGeneric: $isGeneric, failures: $failures, attachments: $attachments, kpis: $kpis, attachFiles: $attachFiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.isGeneric, isGeneric) &&
            (identical(other.failures, failures) ||
                other.failures == failures) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other._kpis, _kpis) &&
            const DeepCollectionEquality()
                .equals(other._attachFiles, _attachFiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      const DeepCollectionEquality().hash(isGeneric),
      failures,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_kpis),
      const DeepCollectionEquality().hash(_attachFiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      __$$_EquipmentModelCopyWithImpl<_$_EquipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentModelToJson(
      this,
    );
  }
}

abstract class _EquipmentModel extends EquipmentModel {
  factory _EquipmentModel(
          {required final int id,
          required final String name,
          final String image,
          final dynamic isGeneric,
          final FailureType? failures,
          final List<AttachmentModel> attachments,
          final List<KpiModel> kpis,
          @JsonKey(includeFromJson: false) final List<File> attachFiles}) =
      _$_EquipmentModel;
  _EquipmentModel._() : super._();

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$_EquipmentModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  dynamic get isGeneric;
  @override
  FailureType? get failures;
  @override
  List<AttachmentModel> get attachments;
  @override
  List<KpiModel> get kpis;
  @override
  @JsonKey(includeFromJson: false)
  List<File> get attachFiles;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
