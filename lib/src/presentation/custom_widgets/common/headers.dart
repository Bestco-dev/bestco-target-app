import 'package:flutter/material.dart';

import '../../../common/utils/extensions/context.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String? description;
  final TextStyle? titleTextStyle;
  final TextStyle? descriptionTextStyle;
  final double? vPadding;
  final double? hPadding;
  const HeaderWidget(
      {Key? key,
        required this.title,
        this.description,
        this.titleTextStyle,
        this.descriptionTextStyle,
        this.hPadding,
        this.vPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isRtl = context.isRtl;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: hPadding ?? 0, vertical: vPadding ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(title, style: titleTextStyle ?? textTheme.titleMedium),
            ),
          ),
          if (description != null)
            Expanded(
              child: Align(
                alignment: isRtl ? Alignment.centerLeft : Alignment.centerRight,
                child: Text(title,
                    style: descriptionTextStyle ?? textTheme.bodyMedium),
              ),
            ),
        ],
      ),
    );
  }
}


class HeaderOptionWidget extends StatelessWidget {
  final String title;
  final String buttonText;
  final VoidCallback onPressed;
  final TextStyle? titleTextStyle;
  final double? hPadding;
  final double? vPadding;
  final Color? textColor;

  const HeaderOptionWidget({
    Key? key,
    required this.title,
    required this.buttonText,
    required this.onPressed,
    this.titleTextStyle,
    this.hPadding,
    this.vPadding,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final isRtl = context.isRtl;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: hPadding ?? 0, vertical: vPadding ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: isRtl ? Alignment.centerRight : Alignment.centerLeft,
              child: Text(title, style: titleTextStyle ?? textTheme.titleMedium),
            ),
          ),
          Expanded(
            child: Align(
                alignment: isRtl ? Alignment.centerLeft : Alignment.centerRight,
                child: GestureDetector(
                  onTap: onPressed,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(4)),
                        border: Border.all(
                            color: textColor ?? Colors.black, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text(
                        buttonText,
                        style: TextStyle(color: textColor ?? Colors.black),
                      ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
