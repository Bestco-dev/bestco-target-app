import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'saleperson_details_mobile.dart';
import 'saleperson_details_tablet.dart';

class SalePersonDetailsPage extends StatelessWidget
    implements IResponsiveUIState {
  final SalePersonEntity saleperson;
  const SalePersonDetailsPage({Key? key, required this.saleperson})
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
      SalePersonDetailsMobilePage(
        saleperson: saleperson,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      SalePersonDetailsTabletPage(saleperson: saleperson);

  static String pageName = 'salePerson_details';
}
