
/// RPC errors message
class RpcError {
  /// Name of error.
  final String name;

  /// Error message.
  final String message;

  RpcError(this.name, this.message);

  RpcError.fromMap(Map<dynamic, dynamic> errors)
      : name = errors["name"],
        message = errors["message"];
}

/// RPC error response.
///
/// Contains more information about error.
class RpcErrorResponse extends RpcError {
  /// Error meta.
  final RpcError? meta;

  RpcErrorResponse.fromMap(Map<dynamic, dynamic> errors)
      : meta = RpcError.fromMap(errors["data"]),
        super(errors["code"], errors["message"]);

  bool get hasMeta => meta != null;

  String get errorMessage => hasMeta ? meta!.message : message;
}
