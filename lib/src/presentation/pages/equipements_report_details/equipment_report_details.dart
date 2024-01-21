import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'equipment_report_details_mobile.dart';
import 'equipment_report_details_tablet.dart';

class EquipmentReportDetails extends StatelessWidget implements IResponsiveUIState {
  final int equipmentId;
  const EquipmentReportDetails({Key? key, required this.equipmentId}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const EquipmentReportDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const EquipmentReportDetailsTabletPage();

  static String pageName = 'equipment_report';
}
