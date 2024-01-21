import 'package:flutter/material.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../../common/res/assets.dart';
import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';

class EmptyResultWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final double? maxWidth;
  final VoidCallback? onRetry;

  const EmptyResultWidget({
    Key? key,
    this.title,
    this.subtitle,
    this.maxWidth,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleText = title ?? context.i18n.noResultFound;
    final subtitleText = subtitle ?? context.i18n.noDataPleasePullToRefresh;
    final maxWidth = this.maxWidth ?? 360;
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 240,
                height: 240,
                child: Image.asset(ResAssets.opsImage),
              ),
              ResVerticalGap.gap07,
              Text(
                titleText,
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              ResVerticalGap.gap04,
              Text(
                subtitleText,
                style: textTheme.bodySmall?.copyWith(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              ResVerticalGap.gap06,
              if (onRetry != null)
                TextButton(
                  onPressed: onRetry,
                  style: TextButton.styleFrom(
                    backgroundColor: ResColors.primary,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 48, vertical: 8),
                  ),
                  child: Text(
                    Localization.of(context).retryAgain,
                    style: context.textTheme.bodyMedium
                        ?.copyWith(color: Colors.white),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
