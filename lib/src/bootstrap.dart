import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../firebase_options.dart';
import 'common/res/env.dart';
import 'common/services/crashlytics.dart';

/// Application configurations loader.
///
/// Initializes firebase.
/// Initialize firebase crashlytics.
/// Initialize firebase remote config.
/// Load env file.
class Bootstrap {
  Bootstrap._internal();

  /// Creates instance of class
  static final Bootstrap _instance = Bootstrap._internal();

  /// Provides instance of class
  static Bootstrap get instance => _instance;

  /// Initialize application configuration
  ///
  /// Loads env file base on development mode
  Future<void> initialize() async {
    // Initialize firebase
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    // Initialize crashlytics service.
    await CrashlyticsService.instance.setCustomCrashParams();

    // Load configurations
    await dotenv.load(fileName: Env.envFile);
  }
}
