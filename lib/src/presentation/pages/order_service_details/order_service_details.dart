import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_service_details_mobile.dart';
import 'order_service_details_tablet.dart';

class OrderServiceDetailsPage extends StatelessWidget implements IResponsiveUIState {

  const OrderServiceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const OrderServiceDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const OrderServiceDetailsTabletPage();

  static String pageName = 'order_details';
}
