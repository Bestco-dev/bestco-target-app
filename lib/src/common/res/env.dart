import 'package:flutter/foundation.dart';

/// Provides env configurations.
class Env {
  Env._();

  ///  Returns environment file path based on [kReleaseMode]
  static const envFile =
      kReleaseMode ? "assets/.env" : "assets/.development.env";
}
