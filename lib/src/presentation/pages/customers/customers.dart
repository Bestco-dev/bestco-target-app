import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'customers_mobile.dart';
import 'customers_tablet.dart';

class CustomersPage extends StatelessWidget implements IResponsiveUIState {

  const CustomersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const CustomersMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const CustomersTabletPage();

  static String pageName = 'customers';
}
