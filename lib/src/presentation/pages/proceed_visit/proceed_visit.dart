import 'package:flutter/material.dart';

import '../../../domain/entities/visit/visit.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'proceed_visit_mobile.dart';
import 'proceed_visit_tablet.dart';

class ProceedVisitPage extends StatelessWidget implements IResponsiveUIState {
  final VisitModel visit;
  const ProceedVisitPage({Key? key, required this.visit}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      ProceedVisitMobilePage(visit);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      ProceedVisitTabletPage(visit);

  static String pageName = 'ProceedVisit';
}
