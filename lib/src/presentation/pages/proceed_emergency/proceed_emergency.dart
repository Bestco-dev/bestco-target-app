import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'proceed_emergency_mobile.dart';
import 'proceed_emergency_tablet.dart';

class ProceedEmergencyPage extends StatelessWidget implements IResponsiveUIState {

  const ProceedEmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
       const ProceedEmergencyMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
       const ProceedEmergencyTabletPage();

  static String pageName = 'ProceedEmergency';
}
