import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'about_app_mobile.dart';
import 'about_app_tablet.dart';

class AccountPage extends StatelessWidget implements IResponsiveUIState {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const AboutAppMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const AboutAppTabletPage();
  static String pageName = 'aboutApp';
}
