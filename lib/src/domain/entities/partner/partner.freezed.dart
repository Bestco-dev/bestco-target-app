// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerModel _$PartnerModelFromJson(Map<String, dynamic> json) {
  return _PartnerModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerModel {
  @JsonValue('uid')
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<SystemModel> get systems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerModelCopyWith<PartnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerModelCopyWith<$Res> {
  factory $PartnerModelCopyWith(
          PartnerModel value, $Res Function(PartnerModel) then) =
      _$PartnerModelCopyWithImpl<$Res, PartnerModel>;
  @useResult
  $Res call(
      {@JsonValue('uid') int id,
      String name,
      String avatarUrl,
      String phone,
      AddressModel address,
      String? email,
      List<SystemModel> systems});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$PartnerModelCopyWithImpl<$Res, $Val extends PartnerModel>
    implements $PartnerModelCopyWith<$Res> {
  _$PartnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? phone = null,
    Object? address = null,
    Object? email = freezed,
    Object? systems = null,
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
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      systems: null == systems
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<SystemModel>,
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
abstract class _$$_PartnerModelCopyWith<$Res>
    implements $PartnerModelCopyWith<$Res> {
  factory _$$_PartnerModelCopyWith(
          _$_PartnerModel value, $Res Function(_$_PartnerModel) then) =
      __$$_PartnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('uid') int id,
      String name,
      String avatarUrl,
      String phone,
      AddressModel address,
      String? email,
      List<SystemModel> systems});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$_PartnerModelCopyWithImpl<$Res>
    extends _$PartnerModelCopyWithImpl<$Res, _$_PartnerModel>
    implements _$$_PartnerModelCopyWith<$Res> {
  __$$_PartnerModelCopyWithImpl(
      _$_PartnerModel _value, $Res Function(_$_PartnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? phone = null,
    Object? address = null,
    Object? email = freezed,
    Object? systems = null,
  }) {
    return _then(_$_PartnerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      systems: null == systems
          ? _value._systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<SystemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PartnerModel extends _PartnerModel {
  _$_PartnerModel(
      {@JsonValue('uid') required this.id,
      required this.name,
      required this.avatarUrl,
      required this.phone,
      required this.address,
      this.email,
      final List<SystemModel> systems = const []})
      : _systems = systems,
        super._();

  factory _$_PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerModelFromJson(json);

  @override
  @JsonValue('uid')
  final int id;
  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final String phone;
  @override
  final AddressModel address;
  @override
  final String? email;
  final List<SystemModel> _systems;
  @override
  @JsonKey()
  List<SystemModel> get systems {
    if (_systems is EqualUnmodifiableListView) return _systems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_systems);
  }

  @override
  String toString() {
    return 'PartnerModel(id: $id, name: $name, avatarUrl: $avatarUrl, phone: $phone, address: $address, email: $email, systems: $systems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._systems, _systems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, phone,
      address, email, const DeepCollectionEquality().hash(_systems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerModelCopyWith<_$_PartnerModel> get copyWith =>
      __$$_PartnerModelCopyWithImpl<_$_PartnerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerModelToJson(
      this,
    );
  }
}

abstract class _PartnerModel extends PartnerModel {
  factory _PartnerModel(
      {@JsonValue('uid') required final int id,
      required final String name,
      required final String avatarUrl,
      required final String phone,
      required final AddressModel address,
      final String? email,
      final List<SystemModel> systems}) = _$_PartnerModel;
  _PartnerModel._() : super._();

  factory _PartnerModel.fromJson(Map<String, dynamic> json) =
      _$_PartnerModel.fromJson;

  @override
  @JsonValue('uid')
  int get id;
  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String get phone;
  @override
  AddressModel get address;
  @override
  String? get email;
  @override
  List<SystemModel> get systems;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerModelCopyWith<_$_PartnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
