import 'package:flutter/material.dart';

import '../../../domain/entities/equipment/equipment.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'equipment_history_mobile.dart';
import 'equipment_history_tablet.dart';

class EquipmentHistory extends StatelessWidget implements IResponsiveUIState {
  final EquipmentModel equipment;
  const EquipmentHistory({Key? key, required this.equipment}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      EquipmentHistoryMobilePage(equipment);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
       EquipmentHistoryTabletPage(equipment);

  static String pageName = 'equipment_history';
}
