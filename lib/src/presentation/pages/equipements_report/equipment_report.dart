import 'package:flutter/material.dart';

import '../../../domain/entities/system/system.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'equipment_report_mobile.dart';
import 'equipment_report_tablet.dart';

class EquipmentReport extends StatelessWidget implements IResponsiveUIState {
  final SystemModel system;
  const EquipmentReport({Key? key, required this.system}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      EquipmentReportMobilePage(system);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
       EquipmentReportTabletPage(system);

  static String pageName = 'equipment_report';
}
