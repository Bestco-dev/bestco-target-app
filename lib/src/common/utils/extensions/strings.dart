import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension StringExtension on String {
  bool get validMap =>
      this == '_Map<String, dynamic>' ||
      this == '_InternalLinkedHashMap<String, dynamic>' ||
      this == '_InternalLinkedHashMap<Object?, Object?>' ||
      this == 'List<Map<String, dynamic>>' ||
      this == 'List<dynamic>';

  bool get validList =>
      this == 'List<Map<String, dynamic>>' || this == 'List<dynamic>';

  bool get asBoolean => toLowerCase() == 'true';

  bool get isTimestampString {
    return isNumeric;
  }

  bool get isDateString {
    return isNumeric;
  }

  /// Converts `this` to int
  ///
  /// Throws [FormatException] when `this` is invalid int value.
  int get asInt => int.parse(this);

  /// Converts `this` to double.
  ///
  /// Throws [FormatException] when `this` is invalid double value.
  double get asDouble => double.parse(this);

  /// Checks `this` is int value
  ///
  /// returns `null` value if `this` is not int value.
  bool get isInt {
    return int.tryParse(this) != null;
  }

  /// Checks `this` is double value
  ///
  /// returns `null` value if `this` is not double value.
  bool get isDouble {
    return double.tryParse(this) != null;
  }

  bool get isNumeric {
    return double.tryParse(this) != null;
  }

  String get capitalize =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String get lower => '${this[0].toLowerCase()}${substring(1)}';

  bool get invalidMap => !validMap;

  String get asArabicNumber {
    String res = '';
    final arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    for (var element in characters) {
      if (!['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
          .contains(element)) {
        res += element;
      } else {
        res += arabicNumbers[int.parse(element)];
      }
    }
    return res;
  }

  String get mineType {
    if (trim().isEmpty) {
      return 'image/bmp';
    }
    final int lastDot = lastIndexOf('.', length - 1);
    if (lastDot != -1) {
      final String extension = substring(lastDot + 1);
      if (_mimeMaps.containsKey(extension.toLowerCase())) {
        return _mimeMaps[extension.toLowerCase()]!;
      }
      return 'image/bmp';
    } else {
      return 'image/bmp';
    }
  }

  Widget get asAssetImage {
    if (endsWith(".svg")) {
      return SvgPicture.asset(this);
    }
    return Image.asset(this);
  }
}

HashMap<String, String> _mimeMaps = HashMap<String, String>.from(_mimeMap);

const Map<String, String> _mimeMap = <String, String>{
  'bmp': 'image/bmp',
  'jp2': 'image/jp2',
  'jpe': 'image/jpeg',
  'jpeg': 'image/jpeg',
  'jpg': 'image/jpeg',
  'jpgm': 'video/jpm',
  'jpgv': 'video/jpeg',
  'jpm': 'video/jpm',
  'png': 'image/png',
};
