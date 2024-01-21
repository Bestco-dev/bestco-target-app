import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'customer_details_mobile.dart';
import 'customer_details_tablet.dart';

class CustomerDetailsPage extends StatelessWidget implements IResponsiveUIState {

  const CustomerDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const CustomerDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const CustomerDetailsTabletPage();

  static String pageName = 'customer_details';
}
