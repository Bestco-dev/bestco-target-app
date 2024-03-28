import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'visit_curd_mobile.dart';
import 'visit_curd_tablet.dart';

class VisitCurdPage extends StatelessWidget implements IResponsiveUIState {
  final VisitEntity? saleperson;
  const VisitCurdPage({Key? key, this.saleperson}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      VisitCurdMobilePage(
        visit: saleperson,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      VisitCurdTabletPage(visit: saleperson);

  static String pageName = 'salePerson_curd';
}
