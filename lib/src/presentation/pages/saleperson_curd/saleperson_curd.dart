import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'saleperson_curd_mobile.dart';
import 'saleperson_curd_tablet.dart';

class SalePersonCurdPage extends StatelessWidget implements IResponsiveUIState {
  final SalePersonEntity? saleperson;
  const SalePersonCurdPage({Key? key, this.saleperson}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      SalePersonCurdMobilePage(
        saleperson: saleperson,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      SalePersonCurdTabletPage(saleperson: saleperson);

  static String pageName = 'salePerson_curd';
}
