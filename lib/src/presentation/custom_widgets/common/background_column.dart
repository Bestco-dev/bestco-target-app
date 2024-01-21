import 'package:flutter/material.dart';

class BackgroundColumn extends StatelessWidget {
  final List<Widget> children;
  final double? vp;
  final double? hp;

  const BackgroundColumn({Key? key, required this.children, this.vp, this.hp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
        color: Colors.transparent,
        // color: Colors.white,
        child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: hp ?? 16, vertical: vp ?? 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children)));
  }
}
