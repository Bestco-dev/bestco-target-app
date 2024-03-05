import 'package:flutter/material.dart';

import '../../../domain/entities/customer/customer.dart';

class CustomerCurdTabletPage extends StatefulWidget {
  final CustomerEntity? customer;
  const CustomerCurdTabletPage({Key? key,required this.customer}) : super(key: key);
  @override
  State<CustomerCurdTabletPage> createState() => _CustomerCurdTabletPageState();
}

class _CustomerCurdTabletPageState extends State<CustomerCurdTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
