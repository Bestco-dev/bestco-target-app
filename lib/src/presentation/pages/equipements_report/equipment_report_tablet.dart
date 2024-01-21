import 'package:flutter/material.dart';

import '../../../domain/entities/system/system.dart';

class EquipmentReportTabletPage extends StatefulWidget {
  final SystemModel  systemModel;
  const EquipmentReportTabletPage(this.systemModel,{Key? key}) : super(key: key);
  @override
  State<EquipmentReportTabletPage> createState() =>
      _EquipmentReportTabletPageState();
}

class _EquipmentReportTabletPageState extends State<EquipmentReportTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
