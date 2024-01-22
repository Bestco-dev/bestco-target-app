// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiStateCopyWith<T, $Res> {
  factory $UiStateCopyWith(UiState<T> value, $Res Function(UiState<T>) then) =
      _$UiStateCopyWithImpl<T, $Res, UiState<T>>;
}

/// @nodoc
class _$UiStateCopyWithImpl<T, $Res, $Val extends UiState<T>>
    implements $UiStateCopyWith<T, $Res> {
  _$UiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UiStateInitialImplCopyWith<T, $Res> {
  factory _$$UiStateInitialImplCopyWith(_$UiStateInitialImpl<T> value,
          $Res Function(_$UiStateInitialImpl<T>) then) =
      __$$UiStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateInitialImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateInitialImpl<T>>
    implements _$$UiStateInitialImplCopyWith<T, $Res> {
  __$$UiStateInitialImplCopyWithImpl(_$UiStateInitialImpl<T> _value,
      $Res Function(_$UiStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateInitialImpl<T> implements UiStateInitial<T> {
  const _$UiStateInitialImpl();

  @override
  String toString() {
    return 'UiState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UiStateInitial<T> implements UiState<T> {
  const factory UiStateInitial() = _$UiStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$UiStateLoadingImplCopyWith<T, $Res> {
  factory _$$UiStateLoadingImplCopyWith(_$UiStateLoadingImpl<T> value,
          $Res Function(_$UiStateLoadingImpl<T>) then) =
      __$$UiStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateLoadingImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateLoadingImpl<T>>
    implements _$$UiStateLoadingImplCopyWith<T, $Res> {
  __$$UiStateLoadingImplCopyWithImpl(_$UiStateLoadingImpl<T> _value,
      $Res Function(_$UiStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateLoadingImpl<T> implements UiStateLoading<T> {
  const _$UiStateLoadingImpl();

  @override
  String toString() {
    return 'UiState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UiStateLoading<T> implements UiState<T> {
  const factory UiStateLoading() = _$UiStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$UiStateDataImplCopyWith<T, $Res> {
  factory _$$UiStateDataImplCopyWith(_$UiStateDataImpl<T> value,
          $Res Function(_$UiStateDataImpl<T>) then) =
      __$$UiStateDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UiStateDataImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateDataImpl<T>>
    implements _$$UiStateDataImplCopyWith<T, $Res> {
  __$$UiStateDataImplCopyWithImpl(
      _$UiStateDataImpl<T> _value, $Res Function(_$UiStateDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UiStateDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UiStateDataImpl<T> implements UiStateData<T> {
  const _$UiStateDataImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'UiState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateDataImplCopyWith<T, _$UiStateDataImpl<T>> get copyWith =>
      __$$UiStateDataImplCopyWithImpl<T, _$UiStateDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class UiStateData<T> implements UiState<T> {
  const factory UiStateData({required final T data}) = _$UiStateDataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$UiStateDataImplCopyWith<T, _$UiStateDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiStateEmptyImplCopyWith<T, $Res> {
  factory _$$UiStateEmptyImplCopyWith(_$UiStateEmptyImpl<T> value,
          $Res Function(_$UiStateEmptyImpl<T>) then) =
      __$$UiStateEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateEmptyImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateEmptyImpl<T>>
    implements _$$UiStateEmptyImplCopyWith<T, $Res> {
  __$$UiStateEmptyImplCopyWithImpl(
      _$UiStateEmptyImpl<T> _value, $Res Function(_$UiStateEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateEmptyImpl<T> implements UiStateEmpty<T> {
  const _$UiStateEmptyImpl();

  @override
  String toString() {
    return 'UiState<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UiStateEmpty<T> implements UiState<T> {
  const factory UiStateEmpty() = _$UiStateEmptyImpl<T>;
}

/// @nodoc
abstract class _$$UiStateErrorImplCopyWith<T, $Res> {
  factory _$$UiStateErrorImplCopyWith(_$UiStateErrorImpl<T> value,
          $Res Function(_$UiStateErrorImpl<T>) then) =
      __$$UiStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$UiStateErrorImplCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateErrorImpl<T>>
    implements _$$UiStateErrorImplCopyWith<T, $Res> {
  __$$UiStateErrorImplCopyWithImpl(
      _$UiStateErrorImpl<T> _value, $Res Function(_$UiStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UiStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$UiStateErrorImpl<T> implements UiStateError<T> {
  const _$UiStateErrorImpl({required this.error});

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'UiState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateErrorImplCopyWith<T, _$UiStateErrorImpl<T>> get copyWith =>
      __$$UiStateErrorImplCopyWithImpl<T, _$UiStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiStateInitial<T> value) initial,
    required TResult Function(UiStateLoading<T> value) loading,
    required TResult Function(UiStateData<T> value) data,
    required TResult Function(UiStateEmpty<T> value) empty,
    required TResult Function(UiStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiStateInitial<T> value)? initial,
    TResult? Function(UiStateLoading<T> value)? loading,
    TResult? Function(UiStateData<T> value)? data,
    TResult? Function(UiStateEmpty<T> value)? empty,
    TResult? Function(UiStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiStateInitial<T> value)? initial,
    TResult Function(UiStateLoading<T> value)? loading,
    TResult Function(UiStateData<T> value)? data,
    TResult Function(UiStateEmpty<T> value)? empty,
    TResult Function(UiStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UiStateError<T> implements UiState<T> {
  const factory UiStateError({required final NetworkExceptions error}) =
      _$UiStateErrorImpl<T>;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$UiStateErrorImplCopyWith<T, _$UiStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
