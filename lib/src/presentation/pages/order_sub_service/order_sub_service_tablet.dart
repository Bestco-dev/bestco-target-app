import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class OrderSubServiceTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const OrderSubServiceTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<OrderSubServiceTabletPage> createState() => _OrderSubServiceTabletPageState();
}

class _OrderSubServiceTabletPageState extends State<OrderSubServiceTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
