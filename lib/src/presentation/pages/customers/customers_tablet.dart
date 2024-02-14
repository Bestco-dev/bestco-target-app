import 'package:flutter/material.dart';

import '../../../domain/entities/customer/customer.dart';

class CustomersTabletPage extends StatefulWidget {
  final CustomerEntity? selectedCustomer;
  Function(CustomerEntity)? onSelected;
   CustomersTabletPage({Key? key,this.selectedCustomer,this.onSelected}) : super(key: key);
  @override
  State<CustomersTabletPage> createState() => _CustomersTabletPageState();
}

class _CustomersTabletPageState extends State<CustomersTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
