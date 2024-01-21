import 'package:flutter/material.dart';

import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';

class RecordSetRequestInfoWidget extends StatelessWidget {
  final String message;
  final String buttonText;
  final Color color;
  final VoidCallback? onAction;

  const RecordSetRequestInfoWidget({
    Key? key,
    required this.message,
    required this.buttonText,
    this.onAction,
    this.color = ResColors.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double width = constraints.biggest.width.toDouble() < 320
                ? constraints.biggest.width.toDouble() - 16
                : constraints.biggest.width.toDouble() - 48;
            return SizedBox(
              width: width,
              child: Card(
                child: ListView(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.warning_amber_outlined,
                          color: ResColors.secondary,
                          size: 72,
                        ),
                        ResVerticalGap.gap04,
                        Text(
                          "Something went wrong",
                          style: textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        ResVerticalGap.gap03,
                        Text(
                          message,
                          textAlign: TextAlign.center,
                        ),
                        ResVerticalGap.gap06,
                        TextButton(
                          onPressed: onAction,
                          style: TextButton.styleFrom(
                            backgroundColor: ResColors.secondary,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 48, vertical: 8),
                          ),
                          child: Text(
                            buttonText,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
