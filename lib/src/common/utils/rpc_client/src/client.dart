import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import 'callback.dart';
import 'response.dart';
import 'version.dart';

/// Extends [String] to concat url string values.
extension on String {
  /// Concat [url] to `this` value.
  String createPath(String url) {
    return this + url;
  }
}

class RpcUtils {
  /// Creates RPC data payload and add [params] to param attribute.
  ///
  /// Assign json rpc version `2.0`.
  /// Assign http request method to `call`
  /// Assign content type to `application/json`
  /// Uses [Uuid] to generate id for payload.
  Map createRequestPayload(Map params) {
    return {
      "jsonrpc": "2.0",
      "method": "call",
      "Content-type": "application/json",
      "params": params,
      "id": const Uuid().v1()
    };
  }

  /// Parses [Exception].
  ///
  /// Returns custom message based on exception type.
  /// Checks if [exception] is [SocketException]
  /// Checks if [exception] is [SocketException]
  handleException(exception) {
    if (exception is SocketException) {
      return "Unable to connect to server, check your internet connection, please contact administrator for more details about site.";
    }
    if (exception is TimeoutException) {
      return "The connection has timed out. due to slow internet connection, or site unavailable ";
    }
    return exception.message;
  }
}

/// Main JSON-RPC access client.
///
/// Provides list of functionality.
/// Uses [connect] to connect to RPC server.
/// Uses [getVersion] to get RPC server version.
/// Uses [getDatabases] to retrieves RPC server database list..
/// Uses [getSessionInfo] to get session info.
/// Uses [performRequest] to request and url.
/// Uses [authenticate] to authentication user with username and password to specific database.
/// Uses [checkSession] to read records with given ids and fields.
/// Uses [getInfo] to read records with given ids and fields.
/// Uses [logout] to read records with given ids and fields.
///
/// The following functionalities performs RPC ORM calls directly.
///
/// 1. Uses [read] to read records with given ids and fields.
/// 2. Uses [searchRead] to search and read based on domain filters.
/// 3. Uses [callKW] to call any model method with arguments.
/// 4. Uses [create] to create record for model.
/// 5. Uses [write] to write record with ids and values
/// 6. Uses [unlink] to remove record from system
/// 7. Uses [callController] to call json controller.
class JsonRpcClient extends RpcUtils {
  /// Http client.
  final Dio _client;

  /// RPC server url
  // final String _backendUrl;

  /// Requests header.
  final Map<String, String> _headers = {};

  /// RPC server version.
  RpcServerVersion rpcServerVersion = RpcServerVersion();

  /// RPC server database.
  List _serverDatabases = [];

  /// Authentication session id.
  String? _sessionId;

  JsonRpcClient({
    required String baseUrl,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) : _client = Dio(BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
            receiveTimeout: receiveTimeout,
            sendTimeout: sendTimeout));

  /// Sets new [_sessionId]
  set sessionId(String sessionId) {
    _sessionId = sessionId;
  }

  close() {
    _client.close();
  }

  /// connect to rpc server and set version and databases
  Future<RpcServerVersion> connect() async {
    rpcServerVersion = await getVersion();
    _serverDatabases = await getDatabases();
    return rpcServerVersion;
  }

  /// get version of rpc server.
  Future<RpcServerVersion> getVersion() async {
    var url = "/web/webclient/version_info";
    final response = await performRequest(url, createRequestPayload({}));
    rpcServerVersion = RpcServerVersion().fromResponse(response);
    return rpcServerVersion;
  }

  /// Retrieves list of database from RPC server.
  Future<List> getDatabases() async {
    if (rpcServerVersion.majorVersion == null) {
      rpcServerVersion = await getVersion();
    }
    late String url;
    var params = {};
    if (rpcServerVersion.majorVersion == 9) {
      url = "/jsonrpc";
      params["method"] = "list";
      params["service"] = "db";
      params["args"] = [];
    } else if (rpcServerVersion.majorVersion >= 10) {
      url = "/web/database/list";
      params["context"] = {};
    } else {
      url = "/web/database/get_list";
      params["context"] = {};
    }
    final response = await performRequest(url, createRequestPayload(params));
    _serverDatabases = response.result;
    return _serverDatabases;
  }

  /// Performs rpc request to [url] with [payload]
  ///
  /// Returns [JsonRpcResponse] instance.
  /// Contains data results, or empty data with error in case of error.
  /// Sets cookie when session presents.
  Future<JsonRpcResponse> performRequest(String url, Map payload) async {
    var body = jsonEncode(payload);
    _headers["Content-type"] = "application/json";
    if (_sessionId != null) {
      _headers['Cookie'] = "session_id=${_sessionId!}";
    }

    try {
      final response = await _client
          .post(url, data: body, options: Options(headers: _headers))
          .timeout(const Duration(seconds: 20));
      var sessionId = _updateCookies(response);

      return JsonRpcResponse(json.decode(response.data),
          response.statusCode ?? 400, sessionId, null);
    } catch (e) {
      final message = handleException(e);
      return JsonRpcResponse({}, 0, null, message);
    }
  }

  /// Updates [_headers] cookies.
  String? _updateCookies(Response response) {
    String? rawCookie = response.headers.value('set-cookie');
    if (rawCookie != null) {
      int index = rawCookie.indexOf(';');
      String cookie = (index == -1) ? rawCookie : rawCookie.substring(0, index);
      _headers['Cookie'] = cookie;
      if (index > -1) {
        return cookie.split("=")[1];
      }
    }
    return null;
  }

  /// Get session information
  Future<JsonRpcResponse> getSessionInfo() async {
    var url = "/web/session/get_session_info";
    return await performRequest(url, createRequestPayload({}));
  }

  /// Authenticates user
  ///
  /// Authentication user with [username] and [password] in [database].
  /// Returns [RpcAuthCallback] contains user information, or error info.
  Future<RpcAuthCallback> authenticate(
      String username, String password, String database) async {
    var url = "/web/session/authenticate";
    var params = {
      "db": database,
      "login": username,
      "password": password,
      "context": {}
    };
    final response = await performRequest(url, createRequestPayload(params));
    if (response.statusCode != 0) {
      await getSessionInfo();
      // setSessionId(response.getSessionId()!);
      return RpcAuthCallback(
          !response.containError, response, response.sessionId);
    }
    return RpcAuthCallback(!response.containError, response, null);
  }

  /// One of AN ORM function to read records
  ///
  /// Read records with given ids and fields.
  /// Reads from [model] following [ids] select following [fields] and
  /// pass [kwargs] as args with [context] as request context.
  /// Calls [callKW] to call RPC server.
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html#search-read
  Future<JsonRpcResponse> read(String model, List<int> ids, List<String> fields,
      {dynamic kwargs, Map? context}) async {
    return await callKW(model, "read", [ids, fields],
        kwargs: kwargs, context: context);
  }

  /// One of AN ORM function to search and read records
  ///
  /// Search and read based on domain filters
  /// Search in [model] following [ids] select following [fields] from
  /// offset [offset] limit [limit] order by [order].
  /// By default offset and limit are `0`.
  /// Calls [performRequest] to perform RPC request.
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html#search-read
  Future<JsonRpcResponse> searchRead(
      String model, List domain, List<String> fields,
      {int offset = 0, int limit = 0, String order = "create_date"}) async {
    var url = "/web/dataset/search_read";
    var params = {
      "model": model,
      "fields": fields,
      "domain": domain,
      "context": {},
      "offset": offset,
      "limit": limit,
      "sort": order
    };
    return await performRequest(url, createRequestPayload(params));
  }

  /// One of AN ORM function to call model methods
  ///
  /// Call any model method with arguments.
  /// Calls [method] from [model]  with [args] as args and
  /// [kwargs] as additional args to [method] with request [context].
  /// Calls [performRequest] to perform RPC request.
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html
  Future<JsonRpcResponse> callKW(String model, String method, List args,
      {dynamic kwargs, Map? context}) async {
    kwargs = kwargs ?? {};
    context = context ?? {};
    var url = "/web/dataset/call_kw/$model/$method";
    var params = {
      "model": model,
      "method": method,
      "args": args,
      "kwargs": kwargs,
      "context": context
    };
    return await performRequest(url, createRequestPayload(params));
  }

  /// One of AN ORM function to creates new [model] record.
  ///
  /// Create record for model.
  /// Calls [callKW] with [model] and `create` method with [subtitle] data.
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html?highlight=create#odoo.models.Model.create
  Future<JsonRpcResponse> create(String model, Map values) async {
    return await callKW(model, "create", [values]);
  }

  /// One of AN ORM function to updates [model] record.
  ///
  /// Calls [callKW] with [model] and `write` method with
  /// records [ids] and [values] as data. .
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html?highlight=write#odoo.models.Model.write
  Future<JsonRpcResponse> write(String model, List<int> ids, Map values) async {
    return await callKW(model, "write", [ids, values]);
  }

  /// One of AN ORM function to deletes the records of the current set.
  ///
  /// Remove record from system
  /// Calls [callKW] with [model] and `unlink` method with
  /// records [ids].
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/orm.html?highlight=write#odoo.models.Model.unlink
  Future<JsonRpcResponse> unlink(String model, List<int> ids) async {
    return await callKW(model, "unlink", [ids]);
  }

  /// Performs direct as to RPC server controller
  ///
  /// Calls [performRequest] with [path] and [params] as data.
  /// For more details https://www.odoo.com/documentation/15.0/developer/reference/backend/http.html?highlight=controller
  Future<JsonRpcResponse> callController(String path, Map params) async {
    return await performRequest(path, createRequestPayload(params));
  }

  /// logout user
  ///
  /// Calls [performRequest] with logout url.
  Future<JsonRpcResponse> logout() async {
    return await performRequest(
        "/web/session/logout", createRequestPayload({}));
  }

  /// Checks if current session is valid.
  Future<RpcAuthCallback> checkSession() async {
    final response = await performRequest("/web/session/check", {});
    final session = await getSessionInfo();
    final auth =
        RpcAuthCallback(!response.containError, response, session.sessionId);
    return auth;
  }

  /// Checks if current session is valid.
  Future<RpcAuthCallback> getInfo() async {
    final response = await performRequest("/web/session/get_session_info", {});
    final session = await getSessionInfo();
    return RpcAuthCallback(!response.containError, response, session.sessionId);
  }
}
