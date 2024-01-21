import 'package:flutter/material.dart';

import '../../../domain/entities/invoice/invoice_entity.dart';

class InvoicesDetailsTabletPage extends StatefulWidget {
  final InvoiceEntity invoice;
  const InvoicesDetailsTabletPage({Key? key,required this.invoice}) : super(key: key);
  @override
  State<InvoicesDetailsTabletPage> createState() => _InvoicesDetailsTabletPageState();
}

class _InvoicesDetailsTabletPageState extends State<InvoicesDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('Check');
  }
}
