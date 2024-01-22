import 'package:flutter/material.dart';

import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'customer_details_mobile.dart';
import 'customer_details_tablet.dart';

class CustomerDetailsPage extends StatelessWidget implements IResponsiveUIState {
  final CustomerEntity customer;
  const CustomerDetailsPage({Key? key,required this.customer}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
       CustomerDetailsMobilePage(customer: customer);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
       CustomerDetailsTabletPage(customer: customer);

  static String pageName = 'customer_details';
}
