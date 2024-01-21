import 'package:flutter_riverpod/flutter_riverpod.dart';

final authTokenProvider = Provider<_AuthTokenNotifier>((ref) {
  return _AuthTokenNotifier();
});

class _AuthTokenNotifier extends StateNotifier<String?> {
  _AuthTokenNotifier() : super('');
  Future initToken() async {
    await Future.delayed(const Duration(seconds: 1));
    const String token = "Token"; //should be load from local
    state = token;
  }

  String? get getToken => state;
  void setToken(String token) => state = token;
}
