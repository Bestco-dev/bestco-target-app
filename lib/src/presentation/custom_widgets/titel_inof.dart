import 'package:flutter/material.dart';

import '../../common/utils/extensions/context.dart';

class CustomTitleInfo extends StatelessWidget {
  final Color? labelColor;
  final Color? infoColor;
  final String? label;
  final String? info;
  final double? fontSize;
  final bool isBold;
  final bool showDote;

  const CustomTitleInfo({
    Key? key,
    this.label,
    this.info,
    this.infoColor,
    this.labelColor,
    this.fontSize,
    this.isBold = false,
    this.showDote = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSizeRes = fontSize ?? (context.isPhone ? 15 : 18);
    return Row(
      children: [
        if (showDote)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 7,
                height: 7,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        Expanded(
          child: Text(
            label ?? "",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
              color: labelColor ?? const Color(0xFF3F3F3F),
              fontSize: fontSizeRes,
            ),
          ),
        ),
        Expanded(
            child: Text(
          info ?? "",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: infoColor ?? const Color(0xFF3F3F3F),
            fontSize: fontSizeRes,
          ),
        ))
      ],
    );
  }
}
