import 'dart:developer' as developer;

import '../../common/services/crashlytics.dart';
import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/use_cases/base.dart';
import '../custom_widgets/common/pagination/state/pagination_state.dart';
import 'base.dart';

class PaginationViewModel<T> extends BasePaginationViewModel<T> {
  PaginationViewModel({
    required PaginationState<T> state,
    required BaseUseCase<Pagination<T>> useCase,
    required url,
    Map<String, dynamic>? query,
    PaginationUrlBuilder? urlBuilder,
  }) : super(state, useCase, url, query: query, urlBuilder: urlBuilder);

  load({String? loadUrl}) async {
    if (!mounted || state.endReached) {
      return;
    }

    /// Luck operation
    await lock.synchronized(
      () async {
        if (mounted && !state.loadingMore && !state.endReached) {
          /// Fire to notify the start of perform data request
          _startLoading();

          /// Fetch data
          try {
            String requestUrl = loadUrl ?? url;

            if (urlBuilder != null) {
              requestUrl = await urlBuilder!.call();
            }
            developer.log('Request URL: $requestUrl');

            final params = ReqParam(
              url: requestUrl,
              data: query ?? {},
              offset: state.offset,
              limit: state.limit,
            );

            await Future.delayed(const Duration(seconds: 1));

            final result = await useCase.call(params).catchError((e, s) =>
                ResponseState<Pagination<T>>.failure(
                    error: NetworkExceptions.parse(e, stack: s)));

            result.whenOrNull(
              success: _dataToState,
              failure: _errorToState,
            );
          } catch (error, stackError) {
            _unknownErrorToState(error, stackError);
          }
        }
      },
    );
  }

  /// Converts [entities] to new [state]
  _dataToState(Pagination<T> pagination) {
    if (mounted) {
      state = state.copyWith(
        entities: <T>{...state.entities, ...pagination.entries}.toList(),
        offset: (state.offset + state.limit).toInt(),
        endReached: (state.entities.length + pagination.meta!.count) >=
            pagination.meta!.total,
        loadMoreError: null,
        isRefresh: false,
        initialize: false,
        loadingMore: false,
        errorMessage: null,
      );
    }
  }

  /// Converts [state] to loading state
  _startLoading() {
    if (mounted) {
      state = state.copyWith(
          loadingMore: state.hasEntities,
          errorMessage: null,
          loadMoreError: null,
          endReached: false);
    }
  }

  /// Converts [error] to new [state]
  _unknownErrorToState(error, stack) {
    final message = NetworkExceptions.parse(error);
    _errorToState(message);
  }

  /// Converts [error] to new [state]
  _errorToState(NetworkExceptions exception) {
    if (!mounted) {
      return;
    }
    String? loadError, loadMoreError;

    if (state.entities.isEmpty) {
      loadError = exception.message;
    } else {
      loadMoreError = exception.message;
    }
    state = state.copyWith(
      loadMoreError: loadMoreError,
      errorMessage: loadError,
      loadingMore: false,
      isRefresh: false,
      initialize: false,
    );
  }

  Future<void> submit(T t) async {
    if (mounted) {
      state = state.copyWith(entities: [...state.entities, t]);
    }
  }

  /// Resets [state]
  /// Moves current [state] to refresh state
  /// calls [load] function to load data
  Future<void> refresh({String? loadUrl}) async {
    if (mounted) {
      state = state.copyWith(
        entities: [],
        offset: 0,
        loadingMore: false,
        isRefresh: true,
        endReached: false,
        errorMessage: null,
        loadMoreError: null,
      );
      await load();
    }
  }

  Future<void> update(List<T> entities) async {
    if (mounted) {
      (entities[0] as dynamic).property;

      final set = <T>{...state.entities, ...entities};
      final newState = state.copyWith(
        entities: set.toList(),
      );
      state = newState;
    }
  }

  Future<void> updateItem(T record) async {
    if (mounted) {
      int count = 0;
      int index = -1;
      for (final rec in state.entities) {
        if (_matchRecord(rec, record)) {
          index = count;
          break;
        }
        count++;
      }
      developer.log(index.toString());
      if (index != -1) {
        final newList = List.of(state.entities);
        newList[index] = record;
        state = state.copyWith(
          entities: newList,
        );
      } else {
        state = state.copyWith(
          entities: <T>{...state.entities, record}.toList(),
        );
      }
    }
  }

  _matchRecord(dynamic record, dynamic other) {
    try {
      return record.id == other.id;
    } catch (err, stack) {
      CrashlyticsService.instance.report(err, stack);
    }
    return false;
  }
}
