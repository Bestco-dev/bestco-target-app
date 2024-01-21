import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter/material.dart';

class LoadMoreError extends StatelessWidget {
  final Function() onPressed;
  final String message;
  const LoadMoreError({
    Key? key,
    required this.onPressed,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(message),
        TextButton(
          onPressed: onPressed,
          child:  Text(Localization.current.retry),
        )
      ],
    );
  }
}
