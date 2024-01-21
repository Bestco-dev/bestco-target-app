import 'package:flutter/material.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../presentation/custom_widgets/common/snack_bars.dart';
import 'datetime.dart';
import 'strings.dart';

/// Provides helper extension to [BuildContext].
///
/// [locale] current app locale.
/// [size] Current context size.
/// [sizeHeight] Current context size height.
/// [sizeWidth] Current context size width.
/// [isRtl] Current locale text direction.
/// [theme] Current context theme.
/// [textTheme] Current context text theme.
extension ContextExtension on BuildContext {
  /// Returns current locale of application

  /// Returns current locale of application
  Locale get locale => Localizations.localeOf(this);
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// get the shortestSide from screen
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// Returns screen size
  Size get size => MediaQuery.of(this).size;

  /// Returns screen height
  double get height => MediaQuery.of(this).size.height;

  /// Returns screen width
  double get width => MediaQuery.of(this).size.width;

  /// Use [locale] to determine screen direction by compare to `ar` locale
  bool get isRtl => textDirection == TextDirection.rtl;

  /// True if the shortestSide is smaller than 600p
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// True if the shortestSide is largest than 600p
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// True if the shortestSide is largest than 720p
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns [BuildContext] theme
  ThemeData get theme => Theme.of(this);

  /// Returns [BuildContext] text theme
  TextTheme get textTheme => theme.textTheme;

  /// Returns localization.
  Localization get i18n => Localization.of(this);

  /// Returns localization.
  String formatNumber(num num) {
    if (isRtl) {
      return num.toString().asArabicNumber;
    }
    return num.toString();
  }

  String dateToDisplay(DateTime date) {
    return date.toDisplay(locale);
  }

  /// Text direction
  TextDirection get textDirection => Directionality.of(this);

  /// Text direction
  TextDirection get textReversDirection => textDirection == TextDirection.rtl
      ? TextDirection.ltr
      : TextDirection.rtl;

  FocusScopeNode get focusScope => FocusScope.of(this);

  clearSnackBar() => ScaffoldMessenger.of(this).clearSnackBars();

  requestFocus() => focusScope.requestFocus(FocusNode());

  removeFocus() => focusScope.unfocus();

  showSnackBar(String message, {IconData? icon, double? width}) =>
      buildCustomSnackBar(
          context: this,
          width: width,
          icon: icon,
          content: Text(
            message,
          ));

  showErr(String message) => showSnackBar(message, icon: Icons.error);

  showSuccess(String message) => showSnackBar(message, icon: Icons.info);
}
