import 'package:flutter/material.dart';

/// Extends [Locale] to locale to [LangCodeEx]
extension LocaleExtension on Locale {
  bool get isAr => this == const Locale("ar");

  bool get isRtl => this == const Locale("ar");
}
