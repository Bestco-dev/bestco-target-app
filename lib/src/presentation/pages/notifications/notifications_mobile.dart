import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../domain/entities/notification/notification.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/notification_tile.dart';
import '../../custom_widgets/common/pagination/pagination.dart';
import '../../custom_widgets/common/recordset/empty.dart';
import '../../custom_widgets/common/recordset/error_recordset.dart';
import '../../custom_widgets/common/spinner.dart';
import '../../view_models/notifications_view_model.dart';

class NotificationsMobilePage extends ConsumerStatefulWidget {
  const NotificationsMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<NotificationsMobilePage> createState() =>
      _NotificationsMobilePageState();
}

class _NotificationsMobilePageState
    extends ConsumerState<NotificationsMobilePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:  Text(Localization.current.notifications),
      ),
      body:CustomBackgroundWidget(child: _pagination ()),
    );

    return _pagination();
  }

  Widget _pagination(){
    final state = ref.watch(notificationsPaginationViewModelProvider);
    return PaginationView<NotificationEntity>(
      state: state,
      name: 'notifications',
      // appbar: SliverAppBar(
      //   title: Text(
      //     Localization.of(context).notifications,
      //     style: const TextStyle(
      //         color: Colors.white
      //     ),
      //   ),
      //   pinned: true,
      //   backgroundColor: ResColors.primary,
      // ),
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
      emptyWidget: const EmptyResultWidget(),
      divider: const SizedBox(),
      loadingWidget: const NotificationsPlaceholder(),
      loadMoreWidget: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Spinner(),
      ),
      onLoad: () async =>
          ref.read(notificationsPaginationViewModelProvider.notifier).load(),
      onRefresh: () async => await ref
          .read(notificationsPaginationViewModelProvider.notifier)
          .refresh(),
      errorBuilder: (message) => RecordSetErrorWidget(
        onRetry: () => ref
            .read(notificationsPaginationViewModelProvider.notifier)
            .refresh(),
        errorMessage: message,
        retryText: Localization.of(context).retry,
      ),
      itemBuilder: (record) {
        return NotificationTile(
          notification: record,

        );
      },
    );
  }
}
