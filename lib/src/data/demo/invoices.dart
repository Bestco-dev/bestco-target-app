import 'package:faker/faker.dart';

import '../../domain/entities/invoice_entity/invoice_entity.dart';
import 'date.dart';


InvoiceEntity getInvoice() {

  final amount = faker.randomGenerator.integer(15000,min: 1000);
  final achieved = faker.randomGenerator.integer(30000,min: 1000);
  final id = faker.randomGenerator.integer(5000);
  return InvoiceEntity(
    id: id,
    amount:amount.toDouble() ,
    name: "INV345$id",
    date: getDateBefore(),
  );
}

List<InvoiceEntity> getInvoicesList({int length = 50}) {
  final list = <InvoiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getInvoice());
  }
  return list;
}

// List<Map<String, dynamic>> mockInvoicesDataResponse({int length = 50}) {
//   final list = getInvoicesList();
//   return list.map((e) => e.toJson()).toList();
// }
