import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
class PaginationState<T> with _$PaginationState<T> {
  const PaginationState._(); // Added constructor

  factory PaginationState({
    required List<T> entities,
    String? errorMessage,
    String? loadMoreError,
    @Default(0) int offset,
    @Default(20) int limit,
    @Default(false) bool loadingMore,
    @Default(false) bool isRefresh,
    @Default(true) bool initialize,
    @Default(false) bool endReached,
  }) = _PaginationState;

  bool get hasError => errorMessage != null;
  bool get hasLoadMoreError => loadMoreError != null;
  bool get hasEntities => entities.isNotEmpty;

}
