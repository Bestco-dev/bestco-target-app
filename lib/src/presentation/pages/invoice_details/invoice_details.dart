import 'package:flutter/material.dart';

import '../../../domain/entities/invoice/invoice_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'invoice_details_mobile.dart';
import 'invoice_details_tablet.dart';

class InvoicesDetailsPage extends StatelessWidget
    implements IResponsiveUIState {
  final InvoiceEntity invoice;
  const InvoicesDetailsPage({Key? key, required this.invoice})
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
      InvoicesDetailsMobilePage(
        invoice: invoice,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      InvoicesDetailsTabletPage(
        invoice: invoice,
      );

  static String pageName = 'invoice_details';
}
