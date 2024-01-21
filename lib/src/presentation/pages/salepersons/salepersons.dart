import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'salepersons_mobile.dart';
import 'salepersons_tablet.dart';

class SalePersonsPage extends StatelessWidget implements IResponsiveUIState {

  const SalePersonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const SalePersonsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const SalePersonsTabletPage();

  static String pageName = 'salePersons';
}
