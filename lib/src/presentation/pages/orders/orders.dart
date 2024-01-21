import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'orders_mobile.dart';
import 'orders_tablet.dart';

class OrdersPage extends StatelessWidget implements IResponsiveUIState {

  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const OrdersMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const OrdersTabletPage();

  static String pageName = 'orders';
}
