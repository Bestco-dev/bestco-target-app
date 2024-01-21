import 'package:flutter/material.dart';

import '../../../common/res/router.dart';
import '../../../common/utils/extensions/context.dart';

BuildContext _context = NavigationService.context!;

class CustomSnakeBars {
  static showErrorSnakeBar(String message, {double? width}) {
    NavigationService.context!
        .showSnackBar(message, icon: Icons.error_outline_outlined);
  }

  static showDoneSnakeBar(String message, {double? width}) {
    NavigationService.context!.showSnackBar(message, icon: Icons.check);
  }

  static showInfoSnakeBar(String message, {double? width}) {
    NavigationService.context!.showSnackBar(message, width: width);
  }
}

clearCustomSnackBar({required BuildContext context}) {
  ScaffoldMessenger.of(context).clearSnackBars();
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildCustomSnackBar(
    {required BuildContext context,
    required Text content,
    IconData? icon,
    Color? flashBackground,
    double? width,
    Color? iconColor = Colors.white}) {
  clearCustomSnackBar(context: context);
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      backgroundColor: flashBackground,
      behavior: SnackBarBehavior.floating,
      width: width,
      padding: const EdgeInsets.all(14),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: Row(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon, color: iconColor),
          if (icon != null)
            const SizedBox(
              width: 10,
            ),
          // Container(child: content)
          Expanded(child: Center(child: content))
        ],
      ),
    ),
  );
}
