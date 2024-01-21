import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';

class OutlinedIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final Color? color;
  final double? borderWidth;

  const OutlinedIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.borderColor,
    this.color,
    this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderColor = this.borderColor ?? ResColors.primary;
    final borderWidth = this.borderWidth ?? 1;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
