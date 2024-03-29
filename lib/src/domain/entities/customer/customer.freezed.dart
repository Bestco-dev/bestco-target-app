// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) {
  return _CustomerEntity.fromJson(json);
}

/// @nodoc
mixin _$CustomerEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  double get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "company_type")
  CustomerType get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get vat => throw _privateConstructorUsedError; // String? taxId,
  String? get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get description => throw _privateConstructorUsedError;
  AddressModel get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerEntityCopyWith<CustomerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEntityCopyWith<$Res> {
  factory $CustomerEntityCopyWith(
          CustomerEntity value, $Res Function(CustomerEntity) then) =
      _$CustomerEntityCopyWithImpl<$Res, CustomerEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(includeToJson: false) double rate,
      @JsonKey(name: "company_type") CustomerType type,
      String? phone,
      String? email,
      String? website,
      String? vat,
      String? imgUrl,
      @JsonKey(name: "comment") String? description,
      AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res, $Val extends CustomerEntity>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rate = null,
    Object? type = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? vat = freezed,
    Object? imgUrl = freezed,
    Object? description = freezed,
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
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CustomerEntityImplCopyWith<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  factory _$$CustomerEntityImplCopyWith(_$CustomerEntityImpl value,
          $Res Function(_$CustomerEntityImpl) then) =
      __$$CustomerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(includeToJson: false) double rate,
      @JsonKey(name: "company_type") CustomerType type,
      String? phone,
      String? email,
      String? website,
      String? vat,
      String? imgUrl,
      @JsonKey(name: "comment") String? description,
      AddressModel address});

  @override
  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$CustomerEntityImplCopyWithImpl<$Res>
    extends _$CustomerEntityCopyWithImpl<$Res, _$CustomerEntityImpl>
    implements _$$CustomerEntityImplCopyWith<$Res> {
  __$$CustomerEntityImplCopyWithImpl(
      _$CustomerEntityImpl _value, $Res Function(_$CustomerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rate = null,
    Object? type = null,
    Object? phone = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? vat = freezed,
    Object? imgUrl = freezed,
    Object? description = freezed,
    Object? address = null,
  }) {
    return _then(_$CustomerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$CustomerEntityImpl extends _CustomerEntity {
  _$CustomerEntityImpl(
      {required this.id,
      required this.name,
      @JsonKey(includeToJson: false) this.rate = 3,
      @JsonKey(name: "company_type") this.type = CustomerType.company,
      this.phone,
      this.email,
      this.website,
      this.vat,
      this.imgUrl,
      @JsonKey(name: "comment") this.description,
      required this.address})
      : super._();

  factory _$CustomerEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(includeToJson: false)
  final double rate;
  @override
  @JsonKey(name: "company_type")
  final CustomerType type;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? vat;
// String? taxId,
  @override
  final String? imgUrl;
  @override
  @JsonKey(name: "comment")
  final String? description;
  @override
  final AddressModel address;

  @override
  String toString() {
    return 'CustomerEntity(id: $id, name: $name, rate: $rate, type: $type, phone: $phone, email: $email, website: $website, vat: $vat, imgUrl: $imgUrl, description: $description, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, rate, type, phone,
      email, website, vat, imgUrl, description, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerEntityImplCopyWith<_$CustomerEntityImpl> get copyWith =>
      __$$CustomerEntityImplCopyWithImpl<_$CustomerEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerEntityImplToJson(
      this,
    );
  }
}

abstract class _CustomerEntity extends CustomerEntity {
  factory _CustomerEntity(
      {required final int id,
      required final String name,
      @JsonKey(includeToJson: false) final double rate,
      @JsonKey(name: "company_type") final CustomerType type,
      final String? phone,
      final String? email,
      final String? website,
      final String? vat,
      final String? imgUrl,
      @JsonKey(name: "comment") final String? description,
      required final AddressModel address}) = _$CustomerEntityImpl;
  _CustomerEntity._() : super._();

  factory _CustomerEntity.fromJson(Map<String, dynamic> json) =
      _$CustomerEntityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(includeToJson: false)
  double get rate;
  @override
  @JsonKey(name: "company_type")
  CustomerType get type;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get vat;
  @override // String? taxId,
  String? get imgUrl;
  @override
  @JsonKey(name: "comment")
  String? get description;
  @override
  AddressModel get address;
  @override
  @JsonKey(ignore: true)
  _$$CustomerEntityImplCopyWith<_$CustomerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
