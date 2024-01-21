import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'visit_details_mobile.dart';
import 'visit_details_tablet.dart';

class VisitDetailsPage extends StatelessWidget implements IResponsiveUIState {
  final int visitId;

  const VisitDetailsPage({Key? key, required this.visitId}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      VisitDetailsMobilePage(visitId: visitId);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      VisitDetailsTabletPage(visitId: visitId);

  static String pageName = 'visitDetails';
}
