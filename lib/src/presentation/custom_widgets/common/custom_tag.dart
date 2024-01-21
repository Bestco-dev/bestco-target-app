import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';

class CustomSelectionTag extends StatelessWidget {
  final String info;
  final Color? color;
  final double? fontSize;
  final bool isSelected;

  const CustomSelectionTag(
      {super.key,
      required this.info,
      this.color,
      this.fontSize,
      this.isSelected = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD7D7D7)),
        color: isSelected
            ? (color ?? ResColors.btnGreen)
            : const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          info,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: isSelected? Colors.white:const Color(0xFF555B6A),
            fontSize: fontSize ?? 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomTag extends StatelessWidget {
  final String info;
  final Color? color;
  final double? fontSize;

  const CustomTag({super.key, required this.info, this.color, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
        color: color ?? ResColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        info,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize ?? 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
