import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'index_mobile.dart';
import 'index_tablet.dart';

class IndexPage extends StatelessWidget implements IResponsiveUIState {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI, tabletUIBuilder: buildMobileUI));

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const IndexMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const IndexTabletPage();
}
