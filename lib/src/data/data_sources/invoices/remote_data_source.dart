import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/exception/network_exceptions/network_exceptions.dart';
import '../../../common/utils/http_client/http_clinet.dart';
import '../../../domain/entities/Invoice/Invoice_entity.dart';
import '../../../domain/entities/req_param/req_param.dart';
import '../../../domain/entities/response/response.dart';
import '../../demo/invoices.dart';
import 'data_source.dart';

final invoicesRemoteDataSourceProvider = Provider<_RemoteDataSourceImplementer>(
  (ref) => _RemoteDataSourceImplementer(ref.read(dioClientProvider)),
);

class _RemoteDataSourceImplementer implements InvoiceDataSource {
  final Dio _client;
  _RemoteDataSourceImplementer(this._client);

  @override
  Future<ResponseState<List<InvoiceEntity>>> load() async{
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List).map((e) => ProductEntity.fromJson(e)).toList(),
        data: getInvoicesList(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }

  @override
  Future<ResponseState<InvoiceEntity>> loadOne(ReqParam param)async {
    try {
      final res = await _client.get("/products");
      return ResponseState.success(
        // data: (res.data as List).map((e) => ProductEntity.fromJson(e)).toList(),
        data: getInvoice(),
      );
    } catch (e, _) {
      return ResponseState.failure(
        error: NetworkExceptions.parse(e),
      );
    }
  }


}
