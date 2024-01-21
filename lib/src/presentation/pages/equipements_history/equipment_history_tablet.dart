import 'package:flutter/material.dart';

import '../../../domain/entities/equipment/equipment.dart';


class EquipmentHistoryTabletPage extends StatefulWidget {
  final EquipmentModel  equipment;
  const EquipmentHistoryTabletPage(this.equipment,{Key? key}) : super(key: key);
  @override
  State<EquipmentHistoryTabletPage> createState() =>
      _EquipmentHistoryTabletPageState();
}

class _EquipmentHistoryTabletPageState extends State<EquipmentHistoryTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
