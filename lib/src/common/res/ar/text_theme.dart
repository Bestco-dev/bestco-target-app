import 'package:flutter/material.dart';

import 'text_styles.dart';

class ResTextTheme {
  static final textTheme = TextTheme(
    displayLarge: ResTextStyle.h1,
    displayMedium: ResTextStyle.h2,
    displaySmall: ResTextStyle.h3,
    headlineMedium: ResTextStyle.h4,
    headlineSmall: ResTextStyle.h5,
    titleLarge: ResTextStyle.h6,
    titleMedium: ResTextStyle.subtitle1,
    titleSmall: ResTextStyle.subtitle2,
    bodyLarge: ResTextStyle.bodyText1,
    bodyMedium: ResTextStyle.bodyText2,
    labelLarge: ResTextStyle.button,
    bodySmall: ResTextStyle.caption,
    labelSmall: ResTextStyle.overLine,
  );
}
