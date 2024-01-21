import 'package:flutter/material.dart';

import '../../../../common/res/assets.dart';
import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';
import '../../../../common/utils/extensions/strings.dart';

class RecordSetEmptyWidget extends StatelessWidget {
  final VoidCallback? onAction;
  final String message;
  final String buttonText;

  const RecordSetEmptyWidget(
      {Key? key,
       this.onAction,
      required this.message,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final double width = context.width > 200 ? 200 : context.width;

    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ResVerticalGap.gap07,
              SizedBox(
                height: width,
                width: width,
                child: ResAssets.opsImage.asAssetImage,
              ),
              ResVerticalGap.gap04,
              Text(
                context.i18n.ops,
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
    );
  }
}
