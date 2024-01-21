
import 'exception.dart';

/// RPC response.
///
/// Contains data body, status code, session and message.
/// Provides list methods to determine the state and data of response.
class JsonRpcResponse {
  /// Response result
  late Map _result;

  /// Response status code.
  late int _statusCode;

  /// Response message
  String? _message;

  /// Session id.
  String? _sessionId;

  JsonRpcResponse(
      Map result, int statusCode, String? newSessionId, String? message) {
    _result = result;
    _message = message;
    _statusCode = statusCode;
    _sessionId = newSessionId;
  }

  /// Checks response contains error.
  bool get containError => _result['error'] != null || _statusCode == 0;

  /// Checks response is valid RPC response.
  bool get success => _result['error'] == null && _statusCode != 0;

  ///
  bool get hasConnectError => _statusCode == 0;

  /// Response message or `null`
  String? get message => _message;

  /// Response errors.
  Map get errors => _result['error'];

  /// Response status code.
  int get statusCode => _statusCode;

  /// Response results.
  dynamic get result => _result['result'];

  /// Returns session id.
  String? get sessionId => _sessionId;

  /// Returns error response or `null`
  RpcErrorResponse? get errorResponse {
    try {
      return RpcErrorResponse.fromMap(_result['error']);
    } catch (_) {}
    return null;
  }

  /// Returns error message
  String? get errorMessage {
    if (containError) {
      return _result['error']['message'];
    }
    return null;
  }
}
