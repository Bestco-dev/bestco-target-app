import 'package:bestco_app/src/common/utils/rpc_client/rpc_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/apis.dart';

class OdooClient {
  static final OdooClient _singleton = OdooClient._internal();
  static final OdooClient instance = _singleton;

  factory OdooClient() {
    return _singleton;
  }

  OdooClient._internal();

  static final JsonRpcClient _http = JsonRpcClient(
    baseUrl: ResApisUrl.baseAPISUrl,
    connectTimeout: const Duration(seconds: 60 * 1000 * 2),
    receiveTimeout: const Duration(seconds: 60 * 1000 * 2),
  );

  final JsonRpcClient http = _http;

  close() => _http.close();

  connect() => _http.connect();

  Future<JsonRpcResponse>  performRequest(String url, Map payload) => _http.performRequest(url, payload);

  Future<RpcAuthCallback> authenticate(String username, String password, String database) =>
      _http.authenticate(username, password, database);

  Future<JsonRpcResponse> read(String model, List<int> ids, List<String> fields,
          {dynamic kwargs, Map? context}) =>
      _http.read(model, ids, fields, kwargs: kwargs, context: context);
}

final AutoDisposeProvider<OdooClient> odooClientProvider =
    Provider.autoDispose<OdooClient>((ref) {
  final OdooClient http = OdooClient.instance;

  ref.onDispose(() => http.close);

  return http;
}, name: 'BaseHttpClient');
