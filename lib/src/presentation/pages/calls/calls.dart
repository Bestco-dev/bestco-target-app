import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'calls_mobile.dart';
import 'calls_tablet.dart';

class CallsPage extends StatelessWidget implements IResponsiveUIState {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const CallsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const CallsTabletPage();

  static String pageName = 'calls';
}
