import 'package:flutter/material.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../../common/res/assets.dart';
import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';
import '../../../../common/utils/extensions/strings.dart';
import '../constrained_widget.dart';



class RecordSetErrorWidget extends StatelessWidget {
  final String errorMessage;
  final String? retryText;
  final VoidCallback? onRetry;

  const RecordSetErrorWidget({
    Key? key,
    required this.errorMessage,
    this.retryText,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final actionText = retryText ?? Localization.of(context).retry;
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResVerticalGap.gap10,
            SizedBox(
              width: 200,
              height: 200,
              child: ResAssets.opsImage.asAssetImage,
            ),
            ResVerticalGap.gap10,
            Text(
              context.i18n.ops,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            ResVerticalGap.gap03,
            ConstrainedSizeWidget(
              width: 240,
              child: Text(
                errorMessage,
                textAlign: TextAlign.center,
              ),
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
                actionText,
                style: textTheme.labelMedium?.copyWith(
                  color: Colors.white
                ),
              ),
            ),
            ResVerticalGap.gap11,
          ],
        ),
      ],
    );
  }
}
