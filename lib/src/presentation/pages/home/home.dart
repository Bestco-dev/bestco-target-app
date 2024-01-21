import 'package:flutter/material.dart';

import '../../custom_widgets/common/press_again.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'home_mobile.dart';
import 'home_tablet.dart';

class HomePage extends StatelessWidget implements IResponsiveUIState {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PressAgainWillPopUpWidget(
    child: Scaffold(
          body: ResponsiveFullSizeUIBuilder(
            mobileUIBuilder: buildMobileUI,
            tabletUIBuilder: buildMobileUI,
          ),
        ),
  );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const HomeMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const HomeTabletPage();
  static String pageName = 'home';
}
