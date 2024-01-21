import 'package:flutter/material.dart';

import '../../../common/utils/extensions/context.dart';

class EquipmentReportDetailsMobilePage extends StatefulWidget {
  const EquipmentReportDetailsMobilePage({Key? key}) : super(key: key);

  @override
  State<EquipmentReportDetailsMobilePage> createState() =>
      _EquipmentReportDetailsMobilePageState();
}

class _EquipmentReportDetailsMobilePageState
    extends State<EquipmentReportDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          child: Text("muller"),
        ),
      ),
    );
  }
}
