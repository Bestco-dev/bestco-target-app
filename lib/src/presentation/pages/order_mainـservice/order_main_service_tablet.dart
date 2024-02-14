import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class OrderMainServiceTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const OrderMainServiceTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<OrderMainServiceTabletPage> createState() => _OrderMainServiceTabletPageState();
}

class _OrderMainServiceTabletPageState extends State<OrderMainServiceTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
