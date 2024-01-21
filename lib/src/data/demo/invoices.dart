import 'package:faker/faker.dart';

import '../../domain/entities/invoice/invoice_entity.dart';



InvoiceEntity getInvoice(){
  final id = faker.randomGenerator.integer(5000);
  final name = "${faker.company.name()} ${faker.company.name()}";
  return InvoiceEntity(
    id: id,
    sequenceNumber: name,
    date: faker.date.dateTimeBetween( DateTime(2023),DateTime.now()),
  );
}

List<InvoiceEntity> getInvoices({int length = 3}) {
  final list = <InvoiceEntity>[];
  for (var i = 0; i < length; i++) {
    list.add(getInvoice());
  }
  return list;
}
List<Map<String, dynamic>> mockCustomersDataResponse({int length = 50}) {
  final list = getInvoices(length: 50);
  return list.map((e) {

    return e.toJson();
  }).toList();
}
