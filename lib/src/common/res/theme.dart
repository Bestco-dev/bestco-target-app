import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'ar/text_theme.dart';
import 'colors.dart';
import 'en/text_theme.dart';
import 'locales.dart';

/// Application theme data
///
/// Use static [theme] method to generate [ThemeData] instead of [InheritedWidget] to reduce build.
class ResTheme {
  /// Provides color scheme for appe lication
  ///
  /// Uses by [theme] function to generate [ThemeData] for application.
  static const FlexSchemeData _myFlexScheme = FlexSchemeData(
    name: 'Color schema',
    description: 'Theme, custom definition of all colors',
    light: FlexSchemeColor(
      primary: ResColors.primary,
      primaryContainer: ResColors.primaryLight,
      secondary: ResColors.secondary,
      secondaryContainer: ResColors.secondary,
      error: ResColors.error,
    ),
    dark: FlexSchemeColor(
      primary: ResColors.primary,
      primaryContainer: ResColors.primaryLight,
      secondary: ResColors.secondary,
      secondaryContainer: ResColors.secondary,
      appBarColor: ResColors.primary,
      error: ResColors.error,
    ),
  );

  /// Generate [ThemeData] from [locale]
  ///
  /// [locale] uses to determine the type of text style resource.
  /// `ar` locale will use [ResTextTheme.theme] to provide text style.
  /// `en` locale will use [EnResTextTheme.theme] to provide text style.
  /// Uses [FlexThemeData] light version only.

  static var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Color(0x666f6f6f),
      // width: 50,
      width: 1,
    ),
  );
  static var errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(
      color: Colors.red,
      // width: 50,
      width: 1,
    ),
  );

  static ThemeData theme(Locale locale) {
    final theme = FlexThemeData.light(
      colors: _myFlexScheme.light,
      appBarElevation: 0,
      // fontFamily: ,

      visualDensity: VisualDensity.standard,
      scaffoldBackground: ResColors.background,
      appBarBackground: const Color(0xFF192B6B),
      // appBarBackground: const Color(0xffF8F8F8),
      // appBarBackground: ResColors.primary,
      appBarStyle: FlexAppBarStyle.primary,

      textTheme:
          locale.isAr ? ResTextTheme.textTheme : EnResTextTheme.textTheme,
      tabBarStyle: FlexTabBarStyle.forAppBar,
    );
    return theme.copyWith(
      appBarTheme: theme.appBarTheme.copyWith(
        centerTitle: true,
      ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        errorStyle: const TextStyle(color: Colors.red),
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        // filled: true,

        hintStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          // color: Color(0x42807e7e),
        ),
        // constraints: BoxConstraints(maxHeight: 50),
        // constraints: BoxConstraints(minHeight: 55),
        // hintText: "Type in your text",
        fillColor: Colors.white70,
        // suffixIconColor: Re,
        // prefixIconColor: AppColors.secondary,

        prefixStyle: const TextStyle(fontSize: 16),
      ),
      tabBarTheme: theme.tabBarTheme.copyWith(
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: ResColors.primary, width: 4),
        ),
      ),
    );
  }
}
