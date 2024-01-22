// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReqParam _$ReqParamFromJson(Map<String, dynamic> json) {
  return _ReqParam.fromJson(json);
}

/// @nodoc
mixin _$ReqParam {
  String get url => throw _privateConstructorUsedError;
  RequestAction get action => throw _privateConstructorUsedError;
  RequestMethod get method => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  String? get filePath => throw _privateConstructorUsedError;
  String? get paramName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReqParamCopyWith<ReqParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqParamCopyWith<$Res> {
  factory $ReqParamCopyWith(ReqParam value, $Res Function(ReqParam) then) =
      _$ReqParamCopyWithImpl<$Res, ReqParam>;
  @useResult
  $Res call(
      {String url,
      RequestAction action,
      RequestMethod method,
      int offset,
      int limit,
      Map<String, dynamic> data,
      String? filePath,
      String? paramName});
}

/// @nodoc
class _$ReqParamCopyWithImpl<$Res, $Val extends ReqParam>
    implements $ReqParamCopyWith<$Res> {
  _$ReqParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? action = null,
    Object? method = null,
    Object? offset = null,
    Object? limit = null,
    Object? data = null,
    Object? filePath = freezed,
    Object? paramName = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RequestAction,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      paramName: freezed == paramName
          ? _value.paramName
          : paramName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqParamImplCopyWith<$Res>
    implements $ReqParamCopyWith<$Res> {
  factory _$$ReqParamImplCopyWith(
          _$ReqParamImpl value, $Res Function(_$ReqParamImpl) then) =
      __$$ReqParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      RequestAction action,
      RequestMethod method,
      int offset,
      int limit,
      Map<String, dynamic> data,
      String? filePath,
      String? paramName});
}

/// @nodoc
class __$$ReqParamImplCopyWithImpl<$Res>
    extends _$ReqParamCopyWithImpl<$Res, _$ReqParamImpl>
    implements _$$ReqParamImplCopyWith<$Res> {
  __$$ReqParamImplCopyWithImpl(
      _$ReqParamImpl _value, $Res Function(_$ReqParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? action = null,
    Object? method = null,
    Object? offset = null,
    Object? limit = null,
    Object? data = null,
    Object? filePath = freezed,
    Object? paramName = freezed,
  }) {
    return _then(_$ReqParamImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RequestAction,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as RequestMethod,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      paramName: freezed == paramName
          ? _value.paramName
          : paramName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqParamImpl extends _ReqParam {
  _$ReqParamImpl(
      {required this.url,
      this.action = RequestAction.request,
      this.method = RequestMethod.get,
      this.offset = 0,
      this.limit = 20,
      final Map<String, dynamic> data = const {},
      this.filePath,
      this.paramName})
      : _data = data,
        super._();

  factory _$ReqParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqParamImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final RequestAction action;
  @override
  @JsonKey()
  final RequestMethod method;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String? filePath;
  @override
  final String? paramName;

  @override
  String toString() {
    return 'ReqParam(url: $url, action: $action, method: $method, offset: $offset, limit: $limit, data: $data, filePath: $filePath, paramName: $paramName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqParamImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.paramName, paramName) ||
                other.paramName == paramName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, action, method, offset,
      limit, const DeepCollectionEquality().hash(_data), filePath, paramName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqParamImplCopyWith<_$ReqParamImpl> get copyWith =>
      __$$ReqParamImplCopyWithImpl<_$ReqParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqParamImplToJson(
      this,
    );
  }
}

abstract class _ReqParam extends ReqParam {
  factory _ReqParam(
      {required final String url,
      final RequestAction action,
      final RequestMethod method,
      final int offset,
      final int limit,
      final Map<String, dynamic> data,
      final String? filePath,
      final String? paramName}) = _$ReqParamImpl;
  _ReqParam._() : super._();

  factory _ReqParam.fromJson(Map<String, dynamic> json) =
      _$ReqParamImpl.fromJson;

  @override
  String get url;
  @override
  RequestAction get action;
  @override
  RequestMethod get method;
  @override
  int get offset;
  @override
  int get limit;
  @override
  Map<String, dynamic> get data;
  @override
  String? get filePath;
  @override
  String? get paramName;
  @override
  @JsonKey(ignore: true)
  _$$ReqParamImplCopyWith<_$ReqParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
