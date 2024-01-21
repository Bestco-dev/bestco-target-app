import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'visits_mobile.dart';
import 'visits_tablet.dart';

class VisitsPage extends StatelessWidget implements IResponsiveUIState {
  const VisitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const VisitsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const VisitsTabletPage();
  static String pageName = 'visits';
}
