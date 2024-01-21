import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../../common/res/colors.dart';
import '../../../../common/res/gaps.dart';
import '../../../../common/utils/extensions/context.dart';
import '../../../../common/utils/luncher.dart';
import '../../../../domain/entities/engineer/engineer_entity.dart';
import '../buttons.dart';
import '../custom_round_image.dart';

class EngineerWidget extends StatelessWidget {
  final EngineerEntity engineer;
  final bool isDetails;
  final String? title;
  const EngineerWidget(
      {required this.engineer, this.title,this.isDetails = false, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRoundImage(
                url: engineer.avatarUrl,
                size: 45,
              ),
              ResHorizontalGap.gap05,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      engineer.name,
                      style: textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 15),
                    ),
                    ResVerticalGap.gap03,
                    Text(isDetails ? engineer.phone : Localization.current.moreInfo),
                    // const Text("More info"),
                  ],
                ),
              ),
              OutlinedIconButton(
                  color: ResColors.primary50,
                  borderColor: ResColors.secondary,
                  onPressed: () =>
                      ResLauncher.instance.openPhone(engineer.phone),
                  icon: const Icon(Iconsax.call, color: ResColors.secondary)),
            ],
          ),
          // ResVerticalGap.gap05,
          // Divider(height: 1, color: Colors.grey[400]),
          // ResVerticalGap.gap05,
          // Row(
          //   children: [
          //     Expanded(
          //       child: ColumnCollection(
          //           title: Localization.of(context).address,
          //           subtitle: customer.address.name),
          //     ),
          //   ],
          // ),
          // ResVerticalGap.gap05,
          // MapWidget(
          //   address: customer.address.copyWith(
          //     latitude: customer.address.latitude,
          //     longitude: customer.address.longitude,
          //   ),
          // ),
          // ResVerticalGap.gap01,
        ],
      ),
    );
  }
}
