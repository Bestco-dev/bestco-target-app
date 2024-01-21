import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'change_password_mobile.dart';
import 'change_password_tablet.dart';

class ChangePasswordPage extends StatelessWidget implements IResponsiveUIState {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildTabletUI,
        ),
      );


  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const ChangePasswordMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ChangePasswordTabletPage();
  static String pageName = 'ChangePassword';
}
