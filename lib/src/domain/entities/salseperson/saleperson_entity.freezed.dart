// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saleperson_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalePersonEntity _$SalePersonEntityFromJson(Map<String, dynamic> json) {
  return _SalePersonEntity.fromJson(json);
}

/// @nodoc
mixin _$SalePersonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "identification_id")
  String? get nationalId => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get description => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  SalePersonStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalePersonEntityCopyWith<SalePersonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalePersonEntityCopyWith<$Res> {
  factory $SalePersonEntityCopyWith(
          SalePersonEntity value, $Res Function(SalePersonEntity) then) =
      _$SalePersonEntityCopyWithImpl<$Res, SalePersonEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? imgUrl,
      String? email,
      String? phone,
      @JsonKey(name: "identification_id") String? nationalId,
      String? password,
      @JsonKey(name: "note") String? description,
      AddressModel address,
      SalePersonStatus status});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$SalePersonEntityCopyWithImpl<$Res, $Val extends SalePersonEntity>
    implements $SalePersonEntityCopyWith<$Res> {
  _$SalePersonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? nationalId = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? address = null,
    Object? status = null,
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
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalePersonStatus,
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
abstract class _$$SalePersonEntityImplCopyWith<$Res>
    implements $SalePersonEntityCopyWith<$Res> {
  factory _$$SalePersonEntityImplCopyWith(_$SalePersonEntityImpl value,
          $Res Function(_$SalePersonEntityImpl) then) =
      __$$SalePersonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? imgUrl,
      String? email,
      String? phone,
      @JsonKey(name: "identification_id") String? nationalId,
      String? password,
      @JsonKey(name: "note") String? description,
      AddressModel address,
      SalePersonStatus status});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$SalePersonEntityImplCopyWithImpl<$Res>
    extends _$SalePersonEntityCopyWithImpl<$Res, _$SalePersonEntityImpl>
    implements _$$SalePersonEntityImplCopyWith<$Res> {
  __$$SalePersonEntityImplCopyWithImpl(_$SalePersonEntityImpl _value,
      $Res Function(_$SalePersonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? nationalId = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? address = null,
    Object? status = null,
  }) {
    return _then(_$SalePersonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalePersonStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SalePersonEntityImpl
    with DiagnosticableTreeMixin
    implements _SalePersonEntity {
  const _$SalePersonEntityImpl(
      {required this.id,
      required this.name,
      this.imgUrl,
      this.email,
      this.phone,
      @JsonKey(name: "identification_id") this.nationalId,
      this.password,
      @JsonKey(name: "note") this.description,
      required this.address,
      this.status = SalePersonStatus.active});

  factory _$SalePersonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalePersonEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? imgUrl;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: "identification_id")
  final String? nationalId;
  @override
  final String? password;
  @override
  @JsonKey(name: "note")
  final String? description;
  @override
  final AddressModel address;
  @override
  @JsonKey()
  final SalePersonStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SalePersonEntity(id: $id, name: $name, imgUrl: $imgUrl, email: $email, phone: $phone, nationalId: $nationalId, password: $password, description: $description, address: $address, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SalePersonEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imgUrl', imgUrl))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('nationalId', nationalId))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalePersonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.nationalId, nationalId) ||
                other.nationalId == nationalId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, email, phone,
      nationalId, password, description, address, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalePersonEntityImplCopyWith<_$SalePersonEntityImpl> get copyWith =>
      __$$SalePersonEntityImplCopyWithImpl<_$SalePersonEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalePersonEntityImplToJson(
      this,
    );
  }
}

abstract class _SalePersonEntity implements SalePersonEntity {
  const factory _SalePersonEntity(
      {required final int id,
      required final String name,
      final String? imgUrl,
      final String? email,
      final String? phone,
      @JsonKey(name: "identification_id") final String? nationalId,
      final String? password,
      @JsonKey(name: "note") final String? description,
      required final AddressModel address,
      final SalePersonStatus status}) = _$SalePersonEntityImpl;

  factory _SalePersonEntity.fromJson(Map<String, dynamic> json) =
      _$SalePersonEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get imgUrl;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: "identification_id")
  String? get nationalId;
  @override
  String? get password;
  @override
  @JsonKey(name: "note")
  String? get description;
  @override
  AddressModel get address;
  @override
  SalePersonStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SalePersonEntityImplCopyWith<_$SalePersonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
