import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'saleperson_details_mobile.dart';
import 'saleperson_details_tablet.dart';

class SalePersonDetailsPage extends StatelessWidget implements IResponsiveUIState {

  const SalePersonDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const SalePersonDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const SalePersonDetailsTabletPage();

  static String pageName = 'salePerson_details';
}
