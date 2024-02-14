import 'package:flutter/material.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'customers_mobile.dart';
import 'customers_tablet.dart';

class CustomersPage extends StatelessWidget implements IResponsiveUIState {
  final CustomerEntity? selectedCustomer;
  Function(CustomerEntity)? onSelected;
  CustomersPage({Key? key, this.selectedCustomer , this.onSelected})
      : super(key: key);

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
        selectedCustomer: selectedCustomer,
        onSelected: onSelected,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      CustomersTabletPage(
        selectedCustomer: selectedCustomer,
      );

  static String pageName = 'customers';
  static String selectionPageName = 'selection_customers';
}
