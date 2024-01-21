import 'package:flutter/material.dart';

import 'text_styles.dart';

class EnResTextTheme {
  static final textTheme = TextTheme(
    displayLarge: EnResTextStyle.h1,
    displayMedium: EnResTextStyle.h2,
    displaySmall: EnResTextStyle.h3,
    headlineMedium: EnResTextStyle.h4,
    headlineSmall: EnResTextStyle.h5,
    titleLarge: EnResTextStyle.h6,
    titleMedium: EnResTextStyle.subtitle1,
    titleSmall: EnResTextStyle.subtitle2,
    bodyLarge: EnResTextStyle.bodyText1,
    bodyMedium: EnResTextStyle.bodyText2,
    labelLarge: EnResTextStyle.button,
    bodySmall: EnResTextStyle.caption,
    labelSmall: EnResTextStyle.overLine,
  );
}
