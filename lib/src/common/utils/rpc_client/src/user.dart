
import 'response.dart';

/// RPC user information.
class JsonRpcUser {
  dynamic name;
  dynamic sessionId;
  dynamic uid;
  dynamic database;
  dynamic username;
  dynamic companyId;
  dynamic partnerId;
  dynamic lang;
  dynamic tz;

  JsonRpcUser parse(JsonRpcResponse response, String? sessionId) {
    if (!response.containError) {
      if (sessionId != null) {
        this.sessionId = sessionId;
      }
      Map<String, dynamic> data = Map<String, dynamic>.from(response.result);
      name = data['name'];
      uid = data['uid'];
      database = data['db'];
      username = data['username'];
      companyId = data['company_id'];
      partnerId = data['partner_id'];
      lang = data['user_context']['lang'];
      tz = data['user_context']['tz'];
    }
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "uid": uid,
      "partner_id": partnerId,
      "company_id": companyId,
      "username": username,
      "lang": lang,
      "timezone": tz,
      "database": database,
      "session_id": sessionId
    };
  }

  @override
  String toString() {
    var map = {
      "name": name,
      "uid": uid,
      "partner_id": partnerId,
      "company_id": companyId,
      "username": username,
      "lang": lang,
      "timezone": tz,
      "database": database,
      "session_id": sessionId
    };
    return map.toString();
  }
}
