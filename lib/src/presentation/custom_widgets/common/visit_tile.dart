import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/types/types.dart';
import '../../../domain/entities/visit/visit.dart';
import 'shimmer_tile.dart';

class VisitTile extends StatelessWidget {
  final VisitModel visit;
  final VoidCallback onPressed;
  final double? radius;
  const VisitTile(
      {Key? key, required this.visit, required this.onPressed, this.radius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: const EdgeInsets.only(bottom: 24, left: 12, right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          // color: backgroundColor,
          color: ResColors.cardBackground,
          // color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 16)),
          // border: Borde),
          border: const Border(
            top: BorderSide(
              width: .7,
              // width:2,
              color: ResColors.borderColor,
              // color: backgroundColor,
            ),
            bottom: BorderSide(
              width: .7,
              color: ResColors.borderColor,
            ),
            left: BorderSide(
              width: .7,
              color: ResColors.borderColor,
              // color: ResColors.borderColor,
            ),
            right: BorderSide(
              width: .7,
              color: ResColors.borderColor,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              contentPadding: EdgeInsets.zero,
              title: Text(visit.date.displayDate,
                  style: textTheme.labelLarge?.copyWith(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.normal,
                      fontSize: 14)),
              trailing: StatusText(
                label: visit.type.translate,
                color: visit.type.color,
              ),
            ),
            ResVerticalGap.gap02,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   width: 36,
                //   height: 36,
                //   child: CircleAvatar(
                //     child: ClipOval(
                //         child: FadeInImage.memoryNetwork(
                //             placeholder: kTransparentImage,
                //             image: visit.customer.avatarUrl)),
                //   ),
                // ),
                // ResHorizontalGap.gap03,
                Expanded(
                    child: Text(
                  visit.systems[0].name,
                  maxLines: 1,
                  // style: textTheme.labelMedium
                  //     ?.copyWith(color: Colors.black, fontSize: 14),
                )),
              ],
            ),
            ResVerticalGap.gap04,
            Row(
              children: [
                Expanded(
                  child: Text(
                    visit.name,
                    // context.i18n.visitType(visit.date.displayDate),
                    // style: textTheme.labelLarge
                    //     ?.copyWith(color: Colors.black, fontSize: 12),
                  ),
                ),
                Text(
                  visit.status.name,
                  // style: textTheme.labelSmall?.copyWith(fontSize: 14),
                ),
              ],
            ),
            ResVerticalGap.gap02,
          ],
        ),
      ),
    );
  }
}

class StatusText extends StatelessWidget {
  final Color color;
  final String label;

  const StatusText({Key? key, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Text(
        label,
        style:  TextStyle(fontSize: 12, color: color.isDark ? Colors.white : Colors.black),
      ),
      // style: context.textTheme.labelSmall?.copyWith(
      //     color: color.isDark ? Colors.white : Colors.black, fontSize: 12)),
    );
  }
}

class VisitDetailsPlaceholder extends StatelessWidget {
  const VisitDetailsPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Row(
          children: [
            RoundedSkeleton(width: 100, height: 36),
            Spacer(),
          ],
        ),
        ResVerticalGap.gap03,
        const RoundedSkeleton(width: double.infinity, height: 44),
        ResVerticalGap.gap05,
        const RoundedSkeleton(width: double.infinity, height: 44),
        ResVerticalGap.gap08,
        const RoundedSkeleton(width: double.infinity, height: 200),
        ResVerticalGap.gap03,
        const RoundedSkeleton(width: double.infinity, height: 200),
      ],
    );
  }
}
