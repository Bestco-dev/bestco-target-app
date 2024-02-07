import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class OrderServiceCurdTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const OrderServiceCurdTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<OrderServiceCurdTabletPage> createState() => _OrderServiceCurdTabletPageState();
}

class _OrderServiceCurdTabletPageState extends State<OrderServiceCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
