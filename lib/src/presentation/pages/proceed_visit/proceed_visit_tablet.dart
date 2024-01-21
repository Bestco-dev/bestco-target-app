import 'package:flutter/material.dart';

import '../../../domain/entities/visit/visit.dart';

class ProceedVisitTabletPage extends StatefulWidget {
  final VisitModel visitModel;
  const ProceedVisitTabletPage(this.visitModel,{Key? key}) : super(key: key);
  @override
  State<ProceedVisitTabletPage> createState() => _ProceedVisitTabletPageState();
}

class _ProceedVisitTabletPageState extends State<ProceedVisitTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
