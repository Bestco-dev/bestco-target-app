import 'package:flutter/material.dart';

import '../../../../common/res/assets.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';
import '../../../../common/utils/extensions/strings.dart';
import '../constrained_widget.dart';




class RecordSetEmptyResultWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  const RecordSetEmptyResultWidget({Key? key, this.title, this.description, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: ConstrainedSizeWidget(
        width: 280,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ResVerticalGap.gap08,
            SizedBox(
              width: 240,
              height: 240,
              child: image?.asAssetImage ?? ResAssets.opsImage.asAssetImage,
            ),
            ResVerticalGap.gap08,
            Text(
              title ?? context.i18n.noResultFound,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
              textAlign: TextAlign.center,
            ),
            ResVerticalGap.gap04,
            Text(
              description ?? context.i18n.noDataPleasePullToRefresh,
              style: textTheme.bodyMedium?.copyWith(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            ResVerticalGap.gap11
          ],
        ),
      ),
    );
  }
}
