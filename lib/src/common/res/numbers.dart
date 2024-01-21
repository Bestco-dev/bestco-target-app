extension IntExtension on num {
  /// Append # to `this`
  String get toCode => '#$this';

  delay() async => await Future.delayed(const Duration(seconds: 1));
  // delay() async => await Future.delayed(Duration(seconds: toInt()));

  String get timeLeft {
    int m, s;

    m = toInt() ~/ 60;

    s = toInt() - (m * 60);

    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }
}

