import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../locales/localization/l10n.dart';
import '../../res/constants.dart';
import '../../res/router.dart';
import 'context.dart';

extension TimeExtension on TimeOfDay {}

extension DateTimeExtension on DateTime {
  bool get hasTime =>  !(hour == 0 && minute == 0&&second==0);
  TimeOfDay get getTime => TimeOfDay(hour: hour, minute: minute);
  String get _langCode => NavigationService.context!.locale.languageCode;

  String get toServerSting =>
      DateFormat(ResConstants.serverDateFormat, _langCode).format(this);

  String get display =>
      DateFormat(ResConstants.displayDateTimeFormat, _langCode).format(this);

  String get display3 =>
      DateFormat(ResConstants.displayDateTimeFormat03, "en").format(this);

  String get displayDate =>
      DateFormat(ResConstants.displayDateFormat, _langCode).format(this);
  String get displayDateFullYear =>
      DateFormat(ResConstants.displayDateTimeFormat02, _langCode).format(this);
  String get displayTime =>
      DateFormat(ResConstants.displayTimeFormat, _langCode).format(this);

  String toDisplay(Locale locale) =>
      DateFormat(ResConstants.displayDateTimeFormat, locale.languageCode)
          .format(this);

  String get toTodayDisplay {
    String date;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    final dateToCheck = this;
    final checkDate =
        DateTime(dateToCheck.year, dateToCheck.month, dateToCheck.day);
    if (checkDate == today) {
      date = Localization.current.today;
    } else if (checkDate == yesterday) {
      date = Localization.current.yesterday;
    } else if (checkDate == tomorrow) {
      date = Localization.current.tomorrow;
    } else {
      date = displayDate;
    }
    return date;
  }
}
