import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dimens.dart';

/// Text style for application .
///
/// Application use english language as default language.
/// This represents text style for english language.
/// Design system contains two font families
/// * [Poppins][https://fonts.google.com/specimen/Poppins] for heads.
/// * [Roboto][https://fonts.google.com/specimen/Roboto] for texts.
class EnResTextStyle {
  /// Headline 1 text style.
  static final h1 = GoogleFonts.poppins(
    fontSize: EnResDimen.h1FontSize,
    fontWeight: FontWeight.w300,
    letterSpacing: EnResDimen.h1LetterSpacing,
  );

  /// Headline 2 text style.
  static final h2 = GoogleFonts.poppins(
    fontSize: EnResDimen.h2FontSize,
    fontWeight: FontWeight.w300,
    letterSpacing: EnResDimen.h3LetterSpacing,
  );

  /// Headline 3 text style.
  static final h3 = GoogleFonts.poppins(
      fontSize: EnResDimen.h3FontSize,
      fontWeight: FontWeight.w400,
      letterSpacing: EnResDimen.h3LetterSpacing);

  /// Headline 4 text style.
  static final h4 = GoogleFonts.poppins(
    fontSize: EnResDimen.h4FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.h4LetterSpacing,
  );

  /// Headline 5 text style.
  static final h5 = GoogleFonts.poppins(
    fontSize: EnResDimen.h5FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.h5LetterSpacing,
  );

  /// Headline 6 text style.
  static final h6 = GoogleFonts.poppins(
    fontSize: EnResDimen.h6FontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: EnResDimen.h6LetterSpacing,
  );

  /// Subtitle 1 text style.
  static final subtitle1 = GoogleFonts.poppins(
    fontSize: EnResDimen.subtitle1FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.subtitle1LetterSpacing,
  );

  /// Subtitle 2 text style.
  static final subtitle2 = GoogleFonts.poppins(
    fontSize: EnResDimen.subtitle2FontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: EnResDimen.subtitle2LetterSpacing,
  );

  /// Body text 1 text style.
  static final bodyText1 = GoogleFonts.roboto(
    fontSize: EnResDimen.bodyText1FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.bodyText1LetterSpacing,
  );

  /// Body text 2 text style.
  static final bodyText2 = GoogleFonts.roboto(
    fontSize: EnResDimen.bodyText2FontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.bodyText2LetterSpacing,
  );

  /// Button 1 text style.
  static final button = GoogleFonts.roboto(
    fontSize: EnResDimen.buttonFontSize,
    fontWeight: FontWeight.w500,
    letterSpacing: EnResDimen.buttonLetterSpacing,
  );

  /// Caption 1 text style.
  static final caption = GoogleFonts.roboto(
    fontSize: EnResDimen.captionFontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.captionLetterSpacing,
  );

  /// Over line 1 text style.
  static final overLine = GoogleFonts.roboto(
    fontSize: EnResDimen.overLineFontSize,
    fontWeight: FontWeight.w400,
    letterSpacing: EnResDimen.overLineLetterSpacing,
  );
}
