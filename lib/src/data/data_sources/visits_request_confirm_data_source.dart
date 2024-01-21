import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/http_client/http_clinet.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../../domain/entities/visit/visit.dart';
import '../demo/visits.dart';
import 'base/resource.dart';

final visitRequestConfirmDataSourceProvider =
    Provider<CreateResDatasource<VisitModel>>(
  (ref) => VisitsRequestConfirmDataSourceImpl(ref.read(dioClientProvider)),
);

class VisitsRequestConfirmDataSourceImpl
    extends CreateResDatasource<VisitModel> {
  final Dio _client;
  VisitsRequestConfirmDataSourceImpl(this._client);
  @override
  Future<ResponseState<VisitModel>> create(ReqParam param) async {
    try {
      final res = await _client.post(param.url, data: param.data);
      // print(res.)
      return ResponseState.success(
        data: getVisit(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }
}
