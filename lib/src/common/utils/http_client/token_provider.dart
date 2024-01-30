import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../storage/shared_pref_util.dart';

final authTokenProvider = Provider<_AuthTokenNotifier>((ref) {
  return _AuthTokenNotifier();
});

class _AuthTokenNotifier extends StateNotifier<String?> {
  _AuthTokenNotifier() : super('');
  Future initToken() async {
    await Future.delayed(const Duration(seconds: 1));

    String? token = await SharedPrefUtil.getAuthToken();
    // const String token = "Token"; //should be load from local
    state = token;
  }

  String? get getToken => state;
  void setToken(String token) => state = token;
}
