import 'package:flutter/material.dart';

import 'snack_bars.dart';

class PressAgainWillPopUpWidget extends StatelessWidget {
  final Widget child;
  PressAgainWillPopUpWidget({Key? key, required this.child}) : super(key: key);
  DateTime? currentPressTime;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        final DateTime now = DateTime.now();
        if (currentPressTime == null ||
            now.difference(currentPressTime!) > const Duration(seconds: 2)) {
          currentPressTime = now;
          CustomSnakeBars.showInfoSnakeBar("Press again to exit",width: 200);
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: child,
    );
  }
}
