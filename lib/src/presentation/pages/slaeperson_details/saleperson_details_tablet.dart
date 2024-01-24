import 'package:flutter/material.dart';

import '../../../domain/entities/salseperson/saleperson_entity.dart';

class SalePersonDetailsTabletPage extends StatefulWidget {
  final SalePersonEntity saleperson;
  const SalePersonDetailsTabletPage({Key? key,required this.saleperson}) : super(key: key);
  @override
  State<SalePersonDetailsTabletPage> createState() => _SalePersonDetailsTabletPageState();
}

class _SalePersonDetailsTabletPageState extends State<SalePersonDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Sale person details');
  }
}
