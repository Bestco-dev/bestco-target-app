import 'package:flutter/material.dart';

import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';

class StatsCol extends StatelessWidget {
  final String title;
  final String value;

  const StatsCol({Key? key, required this.title, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: context.textTheme.titleLarge?.copyWith(
              // color: Colors.white,
            )),
        ResVerticalGap.gap01,
        Text(title,
            style: context.textTheme.bodySmall?.copyWith(
              // color: Colors.white,
            )),
      ],
    );
  }
}