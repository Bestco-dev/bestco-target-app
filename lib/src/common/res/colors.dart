import 'package:flutter/material.dart';

/// Color resource class
///
/// Provides [Color] to whole application.
class ResColors {
  ResColors._();

  static const Color primary = Color(0xff194F8E); //0
  // static const Color primary = Color(0xff850813); //0
  static const Color primaryLight = Color(0xffd96e62); // xFF1D2657
  static List<Color> appBarColorsGradient = const [
    Color(0xFF070873), Color(0xFF07BBFA)
  ];

  static linearGard(BuildContext context) => LinearGradient(
    end: Alignment.topRight,
    begin: Alignment.bottomLeft,
        // begin: Alignment.topCenter,
        // end: context.isRtl ? Alignment.topRight : Alignment.bottomLeft,
        colors: ResColors.appBarColorsGradient,
        // stops: const [0.2, .8],
      );

  static const Color checkBoxBorder = Color(0xff022f50);
  // static const Color checkBoxBorder = Color(0xff0a0a9d);

  /// Light version of [primary].

  /// Dark version of [primary].
  static const Color primaryDark = Color(0xff0a0a9d);

  /// Light version of [primary].
  static const Color primary50 = Color(0xffe8eafc);

  /// Secondary color and variants
  static const Color secondary = Color(0xffef8c4b); //0xFFFFA443
  static const Color btnGreen = Colors.green; //0xFFFFA443

  /// Light version of [secondary].
  static const Color secondaryLight = Color(0xFF7A484D);

  /// Dark version of [secondary]
  static const Color secondaryDark = Color(0xFFc7750c);

  /// Error color and variant
  static const Color error = Color(0xFFD50000);
  static const Color errors50 = Color(0xFFfee8e7);

  /// Dark grey color.
  static const Color darkGrey = Color(0xFF9E9E9E);
  static const Color photoGrey = Color(0xFF9E9E9E);

  /// Application background color.
  //   static const Color background = Color(0xffEBEBEB);
    static const Color background = Colors.white;
    // static const Color cardBackground = Color(0xFFFEEEEE);
    static const Color cardBackground = Colors.white;
    // static const Color cardBackground = Color(0xFFF5F5F5);

    //Omer
  // static const Color background = Color(0xFFE0E0E0);
  // static const Color cardBackground = Color(0xFFF5F5F5);


  // static const Color background = Color(0xfafafaff);

  /// Background dark color.
  static const Color backgroundDark = Color(0xfae1e1e7);

  /// Light button text color.
  static const Color lightButtonColor = Color(0xffffffff);

  /// Borders color.
  // static const Color borderColor = primary;
  static const Color borderColor = Color(0xFFE0E0E0);

  /// Application [TextField] background colors.
  static const Color editTextBackground = Color(0xFAFAFAFF);

  /// Default grey color.
  static const Color gray = Color(0xFA707070);
// static const Color gray200 = Color(Oxffeeeee);
}
