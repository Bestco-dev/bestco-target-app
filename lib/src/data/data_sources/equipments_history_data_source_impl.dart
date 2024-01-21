import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/res/numbers.dart';
import '../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../common/utils/http_client/http_clinet.dart';
import '../../common/utils/pagination/pagination/pagination.dart';
import '../../domain/entities/equipment_history/equipment_history.dart';
import '../../domain/entities/req_param/req_param.dart';
import '../../domain/entities/response/response.dart';
import '../demo/equipments.dart';
import 'base/resource.dart';

final equipmentHistoryDataSourceProvider =
    Provider<EquipmentsHistoryDataSourceImpl>(
  (ref) => EquipmentsHistoryDataSourceImpl(ref.read(dioClientProvider)),
);

class EquipmentsHistoryDataSourceImpl
    extends LoadingResDataSource<EquipmentHistoryModel> {
  final Dio _client;
  EquipmentsHistoryDataSourceImpl(this._client);
  @override
  Future<ResponseState<List<EquipmentHistoryModel>>> load(
      ReqParam param) async {
    try {
      final res = await _client.get("", data: param.data);
      // final res = await _client.post(param.url, data: param.data);
      await 5.delay();
      final clients = getEquipmentHistory(length: 2);
      return ResponseState<List<EquipmentHistoryModel>>.success(data: clients);
    } catch (e) {
      return ResponseState<List<EquipmentHistoryModel>>.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<EquipmentHistoryModel>> loadOne(ReqParam param) {
    // TODO: implement loadOne
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<Pagination<EquipmentHistoryModel>>> loadPage(
      ReqParam param) {
    // TODO: implement loadPage
    throw UnimplementedError();
  }
}
