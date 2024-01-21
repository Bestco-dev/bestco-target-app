import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';

part 'ui_state.freezed.dart';

@freezed
class UiState<T> with _$UiState<T> {
  const factory UiState.initial() = UiStateInitial<T>;
  const factory UiState.loading() = UiStateLoading<T>;

  const factory UiState.data({required T data}) = UiStateData<T>;
  const factory UiState.empty() = UiStateEmpty<T>;

  const factory UiState.error({required NetworkExceptions error}) =
      UiStateError<T>;
}
