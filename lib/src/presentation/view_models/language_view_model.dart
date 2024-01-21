import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../common/utils/storage/shared_pref_util.dart';


final languageProvider = StateNotifierProvider<LangViewModel, Locale>((ref) =>
    LangViewModel(Locale(Platform.localeName.startsWith('ar') ? 'ar' : 'en')));

class LangViewModel extends StateNotifier<Locale> {
  LangViewModel(Locale state) : super(state) {
    _check();
  }

  Future<void> _check() async {
    state = const Locale('ar');
    return;
    final language = await SharedPrefUtil.getSelectedLanguage();
    if (language != null &&
        (['ar', 'en'].contains(language)) &&
        Locale(language) != state) {
      state = Locale(language);
    }
  }

  setLocale(String code) => state = Locale(code);

  saveLanguage(String code) async {
    if (Locale(code) != state) {
      await SharedPrefUtil.saveSelectedLanguage(code);
      setLocale(code);
      initializeDateFormatting(code);
    }
  }

  toggle() => state =
  state == const Locale('en') ? const Locale('ar') : const Locale('en');

  /// Set new language
  ///
  /// Store new language to sharedPref.
  /// Updates [state] to new [code]
  setLanguage(String code) async {
    await SharedPrefUtil.saveSelectedLanguage(code);
    state = Locale(code);
  }

}
