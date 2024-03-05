import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';

class SalePersonCurdTabletPage extends StatefulWidget {
  final SalePersonEntity? saleperson;
  const SalePersonCurdTabletPage({Key? key,required this.saleperson}) : super(key: key);
  @override
  State<SalePersonCurdTabletPage> createState() => _SalePersonCurdTabletPageState();
}

class _SalePersonCurdTabletPageState extends State<SalePersonCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
