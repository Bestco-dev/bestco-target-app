import 'package:freezed_annotation/freezed_annotation.dart';

part 'req_param.freezed.dart';
part 'req_param.g.dart';

@freezed
class ReqParam with _$ReqParam {
  const ReqParam._(); // Added constructor

  factory ReqParam({
    required String url,
    @Default(RequestAction.request) RequestAction action,
    @Default(RequestMethod.get) RequestMethod method,
    @Default(0) int offset,
    @Default(20) int limit,
    @Default({}) Map<String, dynamic> data,
    String? filePath,
    String? paramName,
  }) = _ReqParam;

  factory ReqParam.fromJson(Map<String, dynamic> json) =>
      _$ReqParamFromJson(json);

  bool get isPost => method == RequestMethod.post;
}

enum RequestMethod {
  get,
  post,
  patch,
}

enum RequestAction {
  request,
  report,
  review,
  accept,
}
