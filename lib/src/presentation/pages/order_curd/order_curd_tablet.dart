import 'package:flutter/material.dart';

import '../../../domain/entities/order/order_entity.dart';

class OrderCurdTabletPage extends StatefulWidget {
  final OrderEntity? order;
  const OrderCurdTabletPage({Key? key,required this.order}) : super(key: key);
  @override
  State<OrderCurdTabletPage> createState() => _OrderCurdTabletPageState();
}

class _OrderCurdTabletPageState extends State<OrderCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
