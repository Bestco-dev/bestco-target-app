import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'forget_password_mobile.dart';
import 'forget_password_tablet.dart';

class ForgetPasswordPage extends StatelessWidget implements IResponsiveUIState {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const ForgetPasswordPageMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ForgetPasswordTabletPage();

  static String pageName = 'forget-password';

  static String pathName = 'forget-password';
}
