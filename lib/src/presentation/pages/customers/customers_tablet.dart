import 'package:flutter/material.dart';

class CustomersTabletPage extends StatefulWidget {
  final bool isSelection;
  const CustomersTabletPage({Key? key,this.isSelection=false}) : super(key: key);
  @override
  State<CustomersTabletPage> createState() => _CustomersTabletPageState();
}

class _CustomersTabletPageState extends State<CustomersTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
