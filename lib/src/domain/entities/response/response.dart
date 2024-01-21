import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';

part 'response.freezed.dart';

@freezed
sealed class ResponseState<T> with _$ResponseState<T> {

  const factory ResponseState.success({required T data}) = _sucess;

  const factory ResponseState.failure({required NetworkExceptions error} ) = _failure;

}
