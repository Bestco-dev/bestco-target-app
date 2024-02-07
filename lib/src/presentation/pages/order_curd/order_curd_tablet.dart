import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class OrderCurdTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const OrderCurdTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<OrderCurdTabletPage> createState() => _OrderCurdTabletPageState();
}

class _OrderCurdTabletPageState extends State<OrderCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
