import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'notifications_mobile.dart';
import 'notifications_tablet.dart';

class NotificationsPage extends StatelessWidget implements IResponsiveUIState {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );


  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const NotificationsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const NotificationsTabletPage();
  static String pageName = 'notifications';
}
