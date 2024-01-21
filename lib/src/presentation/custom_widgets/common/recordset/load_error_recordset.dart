import 'package:flutter/material.dart';

import '../../../../common/res/assets.dart';
import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/strings.dart';




class RecordSetLoadErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;
  final String message;
  final String buttonText;

  const RecordSetLoadErrorWidget(
      {Key? key,
      required this.onRetry,
      required this.message,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 240,
                  height: 240,
                  child: ResAssets.opsImage.asAssetImage,
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
                  onPressed: onRetry,
                  style: TextButton.styleFrom(
                    backgroundColor: ResColors.primary,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                ResVerticalGap.gap07,
              ],
            )
          ],
        ),
      ),
    );
  }
}
