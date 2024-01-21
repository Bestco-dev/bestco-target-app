import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/notification/notification.dart';
import 'shimmer_tile.dart';

class NotificationTile extends StatelessWidget {
  final NotificationEntity notification;
  final VoidCallback? onPressed;

  const NotificationTile({Key? key, required this.notification, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final color = notification.type.color;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // if (notification.isVisit ) {
        // context.pushNamed(
        //   VisitDetailsPage.pageName,
        //   pathParameters: {"id": notification.id.toString()},
        // );
        // }

        switch (notification.type) {
          case NotificationType.visitAssign ||
                NotificationType.emergencyVisitAssign ||
                NotificationType.maintenanceAssign:
            // context.pushNamed(
            //   VisitDetailsPage.pageName,
            //   pathParameters: {"id": notification.id.toString()},
            // );
            return;
          default:
            return;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: ResColors.cardBackground,
          // color: ResColors.cardBackground,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ResColors.cardBackground,
                  // color: Colors.grey[200],
                  border: Border.all(color: color, width: 2)),
              child: Center(
                child: Icon(
                  notification.type.icon,
                  color: color,
                ),
              ),
            ),
            ResHorizontalGap.gap05,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResVerticalGap.gap02,
                  Text(notification.title!, style: textTheme.labelLarge),
                  ResVerticalGap.gap03,
                  Text(notification.body!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyMedium?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            ResHorizontalGap.gap05,
            Text(
              Jiffy.parseFromDateTime(notification.timestamp).fromNow(),
              style: textTheme.labelLarge?.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationPlaceholder extends StatelessWidget {
  final double hPadding;

  const NotificationPlaceholder({
    Key? key,
    this.hPadding = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedSkeleton(width: 46, height: 46),
          ResHorizontalGap.gap05,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedSkeleton(width: 100, height: 15),
                ResVerticalGap.gap03,
                RoundedSkeleton(
                  width: 200,
                  height: 35,
                  radius: 4,
                ),
              ],
            ),
          ),
          RoundedSkeleton(width: 80, height: 20),
        ],
      ),
    );
  }
}

class NotificationsPlaceholder extends StatelessWidget {
  const NotificationsPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NotificationPlaceholder(),
        ResVerticalGap.gap06,
        NotificationPlaceholder(),
        ResVerticalGap.gap06,
        NotificationPlaceholder(),
        ResVerticalGap.gap06,
        NotificationPlaceholder(),
        ResVerticalGap.gap06,
        NotificationPlaceholder(),
      ],
    );
  }
}
