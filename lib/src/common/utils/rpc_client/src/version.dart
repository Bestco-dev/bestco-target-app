
import 'response.dart';

/// RPC server version
class RpcServerVersion {
  /// Server version
  dynamic _version;

  /// Major version
  dynamic _major;

  /// RPC server is enterprise version.
  bool _isEnterprise = false;

  RpcServerVersion fromResponse(JsonRpcResponse response) {
    Map result = response.result;
    _version = result['server_version'];
    List<dynamic> versionInfo = result['server_version_info'];
    if (versionInfo.length == 6) {
      _isEnterprise = versionInfo.last == "e";
    }
    _major = versionInfo[0];
    return this;
  }

  /// Returns major version
  dynamic get majorVersion {
    return _major;
  }

  /// Returns version
  dynamic get version {
    return _version;
  }

  /// Returns the of version of server type.
  bool get isEnterprise {
    return _isEnterprise;
  }
}
