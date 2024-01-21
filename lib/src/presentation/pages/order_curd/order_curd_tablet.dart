import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';

class CustomerCurdTabletPage extends StatefulWidget {
  final ContractEntity? contract;
  const CustomerCurdTabletPage({Key? key,required this.contract}) : super(key: key);
  @override
  State<CustomerCurdTabletPage> createState() => _CustomerCurdTabletPageState();
}

class _CustomerCurdTabletPageState extends State<CustomerCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
