class ResPatterns {
  ResPatterns._();

  static const Pattern newPassword =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&)[A-Za-z\d@$!%*?&]{8,}$';
}