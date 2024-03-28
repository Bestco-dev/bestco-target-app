import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/visits/visits_entity.dart';

class VisitCurdTabletPage extends StatefulWidget {
  final VisitEntity? visit;
  const VisitCurdTabletPage({Key? key,required this.visit}) : super(key: key);
  @override
  State<VisitCurdTabletPage> createState() => _VisitCurdTabletPageState();
}

class _VisitCurdTabletPageState extends State<VisitCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
