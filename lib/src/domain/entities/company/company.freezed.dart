// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyEntity _$CompanyEntityFromJson(Map<String, dynamic> json) {
  return _CompanyEntity.fromJson(json);
}

/// @nodoc
mixin _$CompanyEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyEntityCopyWith<CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEntityCopyWith<$Res> {
  factory $CompanyEntityCopyWith(
          CompanyEntity value, $Res Function(CompanyEntity) then) =
      _$CompanyEntityCopyWithImpl<$Res, CompanyEntity>;
  @useResult
  $Res call(
      {int id, String name, String? phone, String? logo, AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res, $Val extends CompanyEntity>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? logo = freezed,
    Object? address = null,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CompanyEntityCopyWith<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  factory _$$_CompanyEntityCopyWith(
          _$_CompanyEntity value, $Res Function(_$_CompanyEntity) then) =
      __$$_CompanyEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String? phone, String? logo, AddressModel address});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$_CompanyEntityCopyWithImpl<$Res>
    extends _$CompanyEntityCopyWithImpl<$Res, _$_CompanyEntity>
    implements _$$_CompanyEntityCopyWith<$Res> {
  __$$_CompanyEntityCopyWithImpl(
      _$_CompanyEntity _value, $Res Function(_$_CompanyEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = freezed,
    Object? logo = freezed,
    Object? address = null,
  }) {
    return _then(_$_CompanyEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_CompanyEntity with DiagnosticableTreeMixin implements _CompanyEntity {
  const _$_CompanyEntity(
      {required this.id,
      required this.name,
      this.phone,
      this.logo,
      required this.address});

  factory _$_CompanyEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? logo;
  @override
  final AddressModel address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyEntity(id: $id, name: $name, phone: $phone, logo: $logo, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, logo, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyEntityCopyWith<_$_CompanyEntity> get copyWith =>
      __$$_CompanyEntityCopyWithImpl<_$_CompanyEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyEntityToJson(
      this,
    );
  }
}

abstract class _CompanyEntity implements CompanyEntity {
  const factory _CompanyEntity(
      {required final int id,
      required final String name,
      final String? phone,
      final String? logo,
      required final AddressModel address}) = _$_CompanyEntity;

  factory _CompanyEntity.fromJson(Map<String, dynamic> json) =
      _$_CompanyEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get phone;
  @override
  String? get logo;
  @override
  AddressModel get address;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyEntityCopyWith<_$_CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
