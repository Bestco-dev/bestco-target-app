import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'invoicing_mobile.dart';
import 'invoicing_tablet.dart';

class InvoicingPage extends StatelessWidget implements IResponsiveUIState {

  const InvoicingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const InvoicingMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const InvoicingTabletPage();

  static String pageName = 'invoicing';
}
