import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimens.dart';

/// Text style for application .
///
/// Application use arabic language as default language.
/// This represents text style for arabic language.
/// Design system contains two font families
/// * [Tajawal][https://fonts.google.com/specimen/Tajawal] for heads.
/// * [Roboto][https://fonts.google.com/specimen/Roboto] for texts.
class ResTextStyle {
  /// Headline 1 text style.
  static final h1 = GoogleFonts.tajawal(
    fontSize: ResDimen.h1FontSize,
    fontWeight: FontWeight.w300,
    letterSpacing: ResDimen.h1LetterSpacing,
  );

  /// Headline 2 text style.
  static final h2 = GoogleFonts.tajawal(
    fontSize: ResDimen.h2FontSize,
    fontWeight: FontWeight.w300,
    letterSpacing: ResDimen.h3LetterSpacing,
  );

  /// Headline 3 text style.
  static final h3 = GoogleFonts.tajawal(
      fontSize: ResDimen.h3FontSize,
      fontWeight: FontWeight.w400,
      letterSpacing: ResDimen.h3LetterSpacing);

  /// Headline 4 text style.
  static final h4 = GoogleFonts.tajawal(
    fontSize: ResDimen.h4FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.h4LetterSpacing,
  );

  /// Headline 5 text style.
  static final h5 = GoogleFonts.tajawal(
    fontSize: ResDimen.h5FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.h5LetterSpacing,
  );

  /// Headline 6 text style.
  static final h6 = GoogleFonts.tajawal(
    fontSize: ResDimen.h6FontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: ResDimen.h6LetterSpacing,
  );

  /// Subtitle 1 text style.
  static final subtitle1 = GoogleFonts.tajawal(
    fontSize: ResDimen.subtitle1FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.subtitle1LetterSpacing,
  );

  /// Subtitle 2 text style.
  static final subtitle2 = GoogleFonts.tajawal(
    fontSize: ResDimen.subtitle2FontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: ResDimen.subtitle2LetterSpacing,
  );

  /// Body text 1 text style.
  static final bodyText1 = GoogleFonts.tajawal(
    fontSize: ResDimen.bodyText1FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.bodyText1LetterSpacing,
  );

  /// Body text 2 text style.
  static final bodyText2 = GoogleFonts.tajawal(
    fontSize: ResDimen.bodyText2FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.bodyText2LetterSpacing,
  );

  /// Button 1 text style.
  static final button = GoogleFonts.tajawal(
    fontSize: ResDimen.buttonFontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: ResDimen.buttonLetterSpacing,
  );

  /// Caption 1 text style.
  static final caption = GoogleFonts.tajawal(
    fontSize: ResDimen.captionFontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.captionLetterSpacing,
  );

  /// Over line 1 text style.
  static final overLine = GoogleFonts.tajawal(
    fontSize: ResDimen.overLineFontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: ResDimen.overLineLetterSpacing,
  );
}
