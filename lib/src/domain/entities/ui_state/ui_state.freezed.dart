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
abstract class _$$UiStateInitialCopyWith<T, $Res> {
  factory _$$UiStateInitialCopyWith(
          _$UiStateInitial<T> value, $Res Function(_$UiStateInitial<T>) then) =
      __$$UiStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateInitialCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateInitial<T>>
    implements _$$UiStateInitialCopyWith<T, $Res> {
  __$$UiStateInitialCopyWithImpl(
      _$UiStateInitial<T> _value, $Res Function(_$UiStateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateInitial<T> implements UiStateInitial<T> {
  const _$UiStateInitial();

  @override
  String toString() {
    return 'UiState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateInitial<T>);
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
  const factory UiStateInitial() = _$UiStateInitial<T>;
}

/// @nodoc
abstract class _$$UiStateLoadingCopyWith<T, $Res> {
  factory _$$UiStateLoadingCopyWith(
          _$UiStateLoading<T> value, $Res Function(_$UiStateLoading<T>) then) =
      __$$UiStateLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateLoadingCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateLoading<T>>
    implements _$$UiStateLoadingCopyWith<T, $Res> {
  __$$UiStateLoadingCopyWithImpl(
      _$UiStateLoading<T> _value, $Res Function(_$UiStateLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateLoading<T> implements UiStateLoading<T> {
  const _$UiStateLoading();

  @override
  String toString() {
    return 'UiState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateLoading<T>);
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
  const factory UiStateLoading() = _$UiStateLoading<T>;
}

/// @nodoc
abstract class _$$UiStateDataCopyWith<T, $Res> {
  factory _$$UiStateDataCopyWith(
          _$UiStateData<T> value, $Res Function(_$UiStateData<T>) then) =
      __$$UiStateDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UiStateDataCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateData<T>>
    implements _$$UiStateDataCopyWith<T, $Res> {
  __$$UiStateDataCopyWithImpl(
      _$UiStateData<T> _value, $Res Function(_$UiStateData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UiStateData<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UiStateData<T> implements UiStateData<T> {
  const _$UiStateData({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'UiState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateDataCopyWith<T, _$UiStateData<T>> get copyWith =>
      __$$UiStateDataCopyWithImpl<T, _$UiStateData<T>>(this, _$identity);

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
  const factory UiStateData({required final T data}) = _$UiStateData<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$UiStateDataCopyWith<T, _$UiStateData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiStateEmptyCopyWith<T, $Res> {
  factory _$$UiStateEmptyCopyWith(
          _$UiStateEmpty<T> value, $Res Function(_$UiStateEmpty<T>) then) =
      __$$UiStateEmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UiStateEmptyCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateEmpty<T>>
    implements _$$UiStateEmptyCopyWith<T, $Res> {
  __$$UiStateEmptyCopyWithImpl(
      _$UiStateEmpty<T> _value, $Res Function(_$UiStateEmpty<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UiStateEmpty<T> implements UiStateEmpty<T> {
  const _$UiStateEmpty();

  @override
  String toString() {
    return 'UiState<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UiStateEmpty<T>);
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
  const factory UiStateEmpty() = _$UiStateEmpty<T>;
}

/// @nodoc
abstract class _$$UiStateErrorCopyWith<T, $Res> {
  factory _$$UiStateErrorCopyWith(
          _$UiStateError<T> value, $Res Function(_$UiStateError<T>) then) =
      __$$UiStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$UiStateErrorCopyWithImpl<T, $Res>
    extends _$UiStateCopyWithImpl<T, $Res, _$UiStateError<T>>
    implements _$$UiStateErrorCopyWith<T, $Res> {
  __$$UiStateErrorCopyWithImpl(
      _$UiStateError<T> _value, $Res Function(_$UiStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UiStateError<T>(
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

class _$UiStateError<T> implements UiStateError<T> {
  const _$UiStateError({required this.error});

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'UiState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateErrorCopyWith<T, _$UiStateError<T>> get copyWith =>
      __$$UiStateErrorCopyWithImpl<T, _$UiStateError<T>>(this, _$identity);

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
      _$UiStateError<T>;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$UiStateErrorCopyWith<T, _$UiStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
