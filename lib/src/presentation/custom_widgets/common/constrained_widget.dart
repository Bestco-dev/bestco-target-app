import 'package:flutter/material.dart';

class ConstrainedSizeWidget extends StatelessWidget {
  final double width;
  final Widget child;

  const ConstrainedSizeWidget({
    Key? key,
    required this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width),
      child: child,
    );
  }
}
