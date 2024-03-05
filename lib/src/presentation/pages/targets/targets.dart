import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'targets_mobile.dart';
import 'targets_tablet.dart';

class TargetsPage extends StatelessWidget implements IResponsiveUIState {

  const TargetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const TargetsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const TargetsTabletPage();

  static String pageName = 'targets';
}
