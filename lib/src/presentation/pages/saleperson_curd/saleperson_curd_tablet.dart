import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class SalePersonCurdTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const SalePersonCurdTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<SalePersonCurdTabletPage> createState() => _SalePersonCurdTabletPageState();
}

class _SalePersonCurdTabletPageState extends State<SalePersonCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
