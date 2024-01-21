import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/exception/model/exception.dart';

part 'app_state.freezed.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.initializing() = Initializing;

  const factory AppState.authenticated() = Authenticated;

  const factory AppState.unauthenticated() = Unauthenticated;

  const factory AppState.loadingError({required ExceptionModel error}) =
      LoadingError;
}
