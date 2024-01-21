import 'shared_pref.dart';
import 'shared_pref_keys.dart';

/// Provides fast access to [SharedPref]
class SharedPrefUtil {
  /// Returns current user name
  static Future<String?> getName() async =>
      await SharedPref.get(SharedPrefKeys.name);

  /// Returns current user email
  static Future<String?> getEmail() async =>
      await SharedPref.get(SharedPrefKeys.email);

  /// Returns current user id
  static Future<String?> getUserId() async =>
      await SharedPref.get(SharedPrefKeys.userId);

  /// Returns current user agent id
  static Future<String?> getAgentId() async =>
      await SharedPref.get(SharedPrefKeys.agentId);

  /// Returns current user data
  static Future<String?> getUser() async =>
      await SharedPref.get(SharedPrefKeys.user);

  /// Returns current token
  static Future<String?> getAuthToken() async =>
      await SharedPref.get(SharedPrefKeys.authToken);

  /// Returns current refresh token
  static Future<String?> getRefreshToken() async =>
      await SharedPref.get(SharedPrefKeys.refreshToken);

  /// Returns flag that determine that its the first time application start
  static Future<String?> getFirstTime() async =>
      await SharedPref.get(SharedPrefKeys.firstTime);

  /// Returns flag that determine that online status of user
  static Future<String?> getOnlineStatus() async =>
      await SharedPref.get(SharedPrefKeys.onlineStatus);

  /// Returns current language of user
  static Future<String?> getSelectedLanguage() async =>
      await SharedPref.get(SharedPrefKeys.langSelected);

  /// Returns default language for application
  static Future<String?> getDefaultLanguage() async =>
      await SharedPref.get(SharedPrefKeys.defaultLanguage);

  /// Returns flag that determine that user views onbaoding screen
  static Future<String?> getOnboard() async =>
      await SharedPref.get(SharedPrefKeys.onboarding);

  /// Returns cached payment options
  ///
  /// When application failed to submit payment information returned by payment service to server it cached this information.
  /// Application submits this information as soon as possible to server.
  /// Application fires service to submits this information when application start.
  static Future<String?> getOptionCache() async =>
      await SharedPref.get(SharedPrefKeys.optionsCache);

  /// Saves onboarding status
  ///
  /// Stores `yes` value for `onboarding` status
  static Future<void> saveOnboard() async =>
      await SharedPref.set(SharedPrefKeys.onboarding, 'yes');

  /// Saves selected language
  ///
  /// Stores [language] value for `language` status
  static Future<void> saveSelectedLanguage(String language) async =>
      await SharedPref.set(SharedPrefKeys.langSelected, language);

  /// Saves current user information
  ///
  /// Stores [user] value for `user` status
  static Future<void> saveUser(String user) async =>
      await SharedPref.set(SharedPrefKeys.user, user);

  /// Saves current user information
  ///
  /// Stores [user] value for `user` status
  static Future<void> saveUserId(String userId) async =>
      await SharedPref.set(SharedPrefKeys.userId, userId);

  /// Saves current user information
  ///
  /// Stores [agent] value for `user` status
  static Future<void> saveAgentId(String agentId) async =>
      await SharedPref.set(SharedPrefKeys.agentId, agentId);

  /// Saves current token
  ///
  /// Stores [token] value for `token`
  static Future<void> saveAuthToken(String token) async =>
      await SharedPref.set(SharedPrefKeys.authToken, token);

  /// Saves current token
  ///
  /// Stores [setToken] value for `token`
  static Future<void> saveOnlineStatus(String status) async =>
      await SharedPref.set(SharedPrefKeys.onlineStatus, status);

  /// Saves current token
  ///
  /// Stores [token] value for `refreshToken`
  static Future<void> saveRefreshToken(String token) async =>
      await SharedPref.set(SharedPrefKeys.refreshToken, token);

  /// Saves current token
  ///
  /// Stores [option] value for `options list`
  static Future<void> saveOptionCache(String option) async =>
      await SharedPref.set(SharedPrefKeys.optionsCache, option);

  /// Clean session information
  static Future<void> logout() async {
    await SharedPref.remove(SharedPrefKeys.authToken);
    await SharedPref.remove(SharedPrefKeys.refreshToken);
  }
}
