import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'check_mobile.dart';
import 'check_tablet.dart';

class CheckPage extends StatelessWidget implements IResponsiveUIState {
  final int visitId;
  const CheckPage({Key? key, required this.visitId}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildTabletUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const CheckMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const CheckTabletPage();

  static String pageName = 'check';
}
