import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';

class OutlinedWidget extends StatelessWidget {
  final Widget child;
  final Color? borderColor;
  final double? borderWidth;

  const OutlinedWidget({
    Key? key,
    required this.child,
    this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderColor = this.borderColor ?? ResColors.primary;
    final borderWidth = this.borderWidth ?? 1;
    return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          shape: BoxShape.circle,
        ),
        child: child);
  }
}
