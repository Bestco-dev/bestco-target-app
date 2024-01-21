
import 'exception.dart';
import 'response.dart';
import 'user.dart';

/// Authentication callback.
///
/// Holds [JsonRpcResponse] response contains auth request information.
/// Provides set of functionalities based on [_response]
class RpcAuthCallback {
  /// Authentication success.
  bool isSuccess = false;

  /// New session id.
  String? _newSessionId;

  /// RPC response.
  late JsonRpcResponse _response;

  RpcAuthCallback(
      this.isSuccess, JsonRpcResponse response, String? newSessionId) {
    _response = response;
    _newSessionId = newSessionId;
  }

  /// Returns current session or `null`.
  String? get sessionId => _newSessionId;

  /// Returns user info as [JsonRpcUser]
  JsonRpcUser get user => JsonRpcUser().parse(_response, _newSessionId);

  /// Returns errors as [Map] or `null`.
  Map? get error => !isSuccess ? _response.errors : null;

  /// Returns error message or `null`.
  String? get errorMessage {
    if (!isSuccess) {
      if (_response.hasConnectError) {
        return _response.message;
      }
      final res = _response.errorResponse;
      if (res != null) {
        return res.errorMessage;
      }
    }
    return null;
  }

  /// Returns error response.
  RpcErrorResponse? get errorResponse =>
      !isSuccess ? _response.errorResponse : null;

  /// Return connection error of response.
  bool isConnectionError() => _response.hasConnectError;
}
