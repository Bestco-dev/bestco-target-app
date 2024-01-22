import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'customer_curd_mobile.dart';
import 'customer_curd_tablet.dart';

class CustomerCurdPage extends StatelessWidget implements IResponsiveUIState {
  final CustomerEntity? customer;
  const CustomerCurdPage({Key? key, this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      CustomerCurdMobilePage(
        customer: customer,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      CustomerCurdTabletPage(customer: customer);

  static String pageName = 'customer_curd';
}
