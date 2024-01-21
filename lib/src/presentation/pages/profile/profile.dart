import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'profile_mobile.dart';
import 'profile_tablet.dart';

class ProfilePage extends StatelessWidget implements IResponsiveUIState {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const ProfileMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ProfileTabletPage();
  static String pageName = 'profile';
}
