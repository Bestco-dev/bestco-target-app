import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'invoices_mobile.dart';
import 'invoices_tablet.dart';

class InvoicesPage extends StatelessWidget implements IResponsiveUIState {

  const InvoicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const InvoicesMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const TargetsTabletPage();

  static String pageName = 'invoices';
}
