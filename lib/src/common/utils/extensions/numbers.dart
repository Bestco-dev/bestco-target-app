import 'dart:math';

import 'package:intl/intl.dart';

var formatter = NumberFormat("##,##0.00", "en_US");

extension CustomNumber on num {
  String get toPriceFormat => formatter.format(this);
  double get roundTo2Decimal => double.parse(toStringAsExponential(2));
  double get roundTo1Decimal => double.parse(toStringAsExponential(1));
}
