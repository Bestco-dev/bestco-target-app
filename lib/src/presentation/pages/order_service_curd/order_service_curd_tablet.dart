import 'package:flutter/material.dart';

import '../../../domain/entities/service_sub/sub_service.dart';

class OrderServiceCurdTabletPage extends StatefulWidget {
  final SubServiceEntity? contract;
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
