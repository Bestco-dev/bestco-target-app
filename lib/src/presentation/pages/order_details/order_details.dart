import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_details_mobile.dart';
import 'order_details_tablet.dart';

class OrderDetailsPage extends StatelessWidget implements IResponsiveUIState {

  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const OrderDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const OrderDetailsTabletPage();

  static String pageName = 'order_details';
}
