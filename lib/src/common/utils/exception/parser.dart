import 'package:dio/dio.dart';

import 'extensions.dart';
import 'model/exception.dart';

class ExceptionParser {
  ExceptionParser._();

  static ExceptionModel parse(dynamic error, {StackTrace? stack}) {
    ExceptionModel model = ExceptionModel();
    print("is daio");
    print((error is DioException));

    // return model.copyWith(message: "haoskdfjla");
    if (error is DioException) {
      return model.copyWith(message: error.response?.statusCode.toString());
      // return model.copyWith(message: error.type.toString());
    }

    if (error is String) {
      return model.copyWith(message: error);
    }
    if (error is int) {
      return model.copyWith(message: error.httpMessage);
    }
    return model;
  }
}
