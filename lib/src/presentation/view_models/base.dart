import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synchronized/synchronized.dart';

import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/repositories/base.dart';
import '../../domain/use_cases/base.dart';
import '../custom_widgets/common/pagination/state/pagination_state.dart';

abstract class BaseViewModel<T> extends StateNotifier<T> {
  @protected
  late BaseRepository<T> repository;

  BaseViewModel(state) : super(state);
}

typedef PaginationUrlBuilder = Future<String> Function();

class BasePaginationViewModel<T> extends StateNotifier<PaginationState<T>> {
  final BaseUseCase<Pagination<T>> useCase;
  final lock = Lock();
  final String url;
  final Map<String, dynamic>? query;
  final PaginationUrlBuilder? urlBuilder;

  BasePaginationViewModel(PaginationState<T> state, this.useCase, this.url,
      {this.query, this.urlBuilder})
      : super(state);
}
