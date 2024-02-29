// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainServiceEntity _$MainServiceEntityFromJson(Map<String, dynamic> json) {
  return _MainServiceEntity.fromJson(json);
}

/// @nodoc
mixin _$MainServiceEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get serviceType => throw _privateConstructorUsedError;
  MainServiceType get type => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainServiceEntityCopyWith<MainServiceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainServiceEntityCopyWith<$Res> {
  factory $MainServiceEntityCopyWith(
          MainServiceEntity value, $Res Function(MainServiceEntity) then) =
      _$MainServiceEntityCopyWithImpl<$Res, MainServiceEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String serviceType,
      MainServiceType type,
      String imageUrl});
}

/// @nodoc
class _$MainServiceEntityCopyWithImpl<$Res, $Val extends MainServiceEntity>
    implements $MainServiceEntityCopyWith<$Res> {
  _$MainServiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceType = null,
    Object? type = null,
    Object? imageUrl = null,
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
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainServiceType,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainServiceEntityImplCopyWith<$Res>
    implements $MainServiceEntityCopyWith<$Res> {
  factory _$$MainServiceEntityImplCopyWith(_$MainServiceEntityImpl value,
          $Res Function(_$MainServiceEntityImpl) then) =
      __$$MainServiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String serviceType,
      MainServiceType type,
      String imageUrl});
}

/// @nodoc
class __$$MainServiceEntityImplCopyWithImpl<$Res>
    extends _$MainServiceEntityCopyWithImpl<$Res, _$MainServiceEntityImpl>
    implements _$$MainServiceEntityImplCopyWith<$Res> {
  __$$MainServiceEntityImplCopyWithImpl(_$MainServiceEntityImpl _value,
      $Res Function(_$MainServiceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? serviceType = null,
    Object? type = null,
    Object? imageUrl = null,
  }) {
    return _then(_$MainServiceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serviceType: null == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainServiceType,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$MainServiceEntityImpl extends _MainServiceEntity
    with DiagnosticableTreeMixin {
  const _$MainServiceEntityImpl(
      {required this.id,
      required this.name,
      this.serviceType = 'serviceType',
      this.type = MainServiceType.cleaning,
      this.imageUrl = ''})
      : super._();

  factory _$MainServiceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainServiceEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String serviceType;
  @override
  @JsonKey()
  final MainServiceType type;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainServiceEntity(id: $id, name: $name, serviceType: $serviceType, type: $type, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainServiceEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('serviceType', serviceType))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainServiceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, serviceType, type, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainServiceEntityImplCopyWith<_$MainServiceEntityImpl> get copyWith =>
      __$$MainServiceEntityImplCopyWithImpl<_$MainServiceEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainServiceEntityImplToJson(
      this,
    );
  }
}

abstract class _MainServiceEntity extends MainServiceEntity {
  const factory _MainServiceEntity(
      {required final int id,
      required final String name,
      final String serviceType,
      final MainServiceType type,
      final String imageUrl}) = _$MainServiceEntityImpl;
  const _MainServiceEntity._() : super._();

  factory _MainServiceEntity.fromJson(Map<String, dynamic> json) =
      _$MainServiceEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get serviceType;
  @override
  MainServiceType get type;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$MainServiceEntityImplCopyWith<_$MainServiceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
