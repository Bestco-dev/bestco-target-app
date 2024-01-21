import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../../common/res/padding.dart';

class CustomCard extends StatelessWidget {
  final String? header;
  final double? vp;
  final double? hp;
  final double? vm;
  final double? hm;
  final Widget child;
  final Color? background;
  final Color? borderColor;
  final double? radius;

  const CustomCard({
    Key? key,
    required this.child,
    this.vp,
    this.hp,
    this.vm,
    this.hm,
    this.header,
    this.borderColor,
    this.background,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final container = Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
        color: background ?? ResColors.cardBackground,
        border: Border.all(width: 1, color: borderColor?? const Color(0xffe8e8e8)),
      ),
      padding: EdgeInsets.symmetric(
        vertical: vp ?? 16,
        horizontal: hp ?? 16,
      ),
      margin: EdgeInsets.symmetric(
        vertical: vm ?? 0,
        horizontal: hm ?? 0,
      ),
      child: child,
    );

    if (header == null) {
      return container;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: ResPadding.padding05,
          child: Text(
            header!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        container,
      ],
    );
  }
}
