import 'package:flutter/material.dart';

import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/exception/model/exception.dart';
import '../../../../common/utils/exception/parser.dart';
import '../constrained_widget.dart';


class RecordSetWarningWidget extends StatelessWidget {
  final dynamic error;
  final String buttonText;
  final VoidCallback? onAction;

  const RecordSetWarningWidget({
    Key? key,
    required this.error,
    required this.buttonText,
    this.onAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ResVerticalGap.gap08,
        const Icon(Icons.warning_amber_rounded,
            size: 48, color: ResColors.error),
        ResVerticalGap.gap04,
        Text(
          "Something went wrong",
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        ResVerticalGap.gap03,
        ConstrainedSizeWidget(
          width: 240,
          child: Text(
            _parseError(error),
            textAlign: TextAlign.center,
          ),
        ),
        ResVerticalGap.gap06,
        TextButton(
          onPressed: onAction,
          style: TextButton.styleFrom(
            backgroundColor: ResColors.error,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  /// Converts parse error message
  _parseError(error) {
    if (error is String) {
      return error;
    }
    if (error is ExceptionModel) {
      return error.msg;
    }
    return ExceptionParser.parse(error).msg;
  }
}
