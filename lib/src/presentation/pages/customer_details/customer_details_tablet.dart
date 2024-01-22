import 'package:flutter/material.dart';

import '../../../domain/entities/customer/customer.dart';

class CustomerDetailsTabletPage extends StatefulWidget {
  final CustomerEntity customer;
  const CustomerDetailsTabletPage({Key? key,required this.customer}) : super(key: key);
  @override
  State<CustomerDetailsTabletPage> createState() => _CustomerDetailsTabletPageState();
}

class _CustomerDetailsTabletPageState extends State<CustomerDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
