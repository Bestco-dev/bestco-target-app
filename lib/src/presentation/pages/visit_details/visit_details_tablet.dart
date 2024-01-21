import 'package:flutter/material.dart';

class VisitDetailsTabletPage extends StatefulWidget {
  final int visitId;
  const VisitDetailsTabletPage({Key? key, required this.visitId}) : super(key: key);

  @override
  State<VisitDetailsTabletPage> createState() =>
      _VisitDetailsTabletPageState();
}

class _VisitDetailsTabletPageState extends State<VisitDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Visit_details');
  }
}
