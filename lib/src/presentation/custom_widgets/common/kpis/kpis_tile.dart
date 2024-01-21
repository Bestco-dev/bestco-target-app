import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';
import '../rounded.dart';

class KpisTile extends StatelessWidget {

  const KpisTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const SizedBox(
            width: 48,
            height: 48,
            child: OutlinedWidget(
              borderColor: Colors.red,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Iconsax.presention_chart,
                  color: Colors.red,
                ),
              ),
            )),
        ResHorizontalGap.gap05,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResVerticalGap.gap02,
              Text("Name", style: textTheme.labelLarge),
              ResVerticalGap.gap03,
              Text("defect Lead equipment to",
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.normal)),
            ],
          ),
        ),
        ResHorizontalGap.gap05,
        Text("Every 2 months",
            style: textTheme.labelMedium?.copyWith(
                color: Colors.grey[600], fontWeight: FontWeight.normal))
      ],
    );
  }
}
