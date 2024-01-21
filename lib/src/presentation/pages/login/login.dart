import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'login_mobile.dart';
import 'login_tablet.dart';

class LoginPage extends StatelessWidget implements IResponsiveUIState {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const LoginMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const LoginTabletPage();

  // Router page name.
  static String pageName = 'login';

  // Router path.
  static String pathName = '/login';
}
