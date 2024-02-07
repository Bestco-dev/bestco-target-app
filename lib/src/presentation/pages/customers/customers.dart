import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'customers_mobile.dart';
import 'customers_tablet.dart';

class CustomersPage extends StatelessWidget implements IResponsiveUIState {
  final bool? isSelection;
  const CustomersPage({Key? key, this.isSelection = false}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      CustomersMobilePage(
        isSelection: isSelection ?? false,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      CustomersTabletPage(
        isSelection: isSelection ?? false,
      );

  static String pageName = 'customers';
  static String selectionPageName = 'selection_customers';
}
