import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'calender_mobile.dart';
import 'calender_tablet.dart';

class CalenderPage extends StatelessWidget implements IResponsiveUIState {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );


  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const CalenderMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const CalenderTabletPage();
  static String pageName = 'calender';
}
