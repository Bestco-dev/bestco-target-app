import 'package:flutter/material.dart';

import '../../../../domain/entities/equipment/equipment.dart';
import '../../../pages/equipements_history/equipment_history.dart';
import '../custom_dialogs_bar.dart';

class EquipmentHistoryIcon extends StatelessWidget {
  final EquipmentModel equipment;
  final Widget child;
  const EquipmentHistoryIcon(
      {required this.child, required this.equipment, super.key});
  void _showEquipmentHistory(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: EquipmentHistory(
              equipment: equipment,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppCustomDialogs.alertDialog(
          insetPadding: 0,
          contentPadding: EdgeInsets.zero,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: EquipmentHistory(
              equipment: equipment,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
