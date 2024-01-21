import 'package:faker/faker.dart';

import '../../common/utils/extensions/strings.dart';
import '../../domain/entities/attachment/attachment.dart';
import '../../domain/entities/visit/visit.dart';
import '../../domain/entities/visit_descriptioin/visit_description.dart';
import '../../domain/entities/visit_status/visit_status.dart';
import '../types/types.dart';
import 'customers.dart';
import 'engineer.dart';
import 'images.dart';
import 'systems.dart';

//customers

//visits ....

VisitModel getVisit() {
  DateTime now = DateTime.now();

  final id = faker.randomGenerator.integer(5000);
  // final date = faker.date.dateTime(minYear: 2023, maxYear: 2023);
  final date = faker.date.dateTimeBetween(
      DateTime(now.year, now.month, now.day),
      DateTime(now.year, now.month, now.day + 4));
  final name = "VI/${date.year}/${date.month}/00${date.day}";
  // const status = getVisitStatus;
  final type = faker.randomGenerator.element(VisitType.values);
  final action = faker.randomGenerator.element(VisitAction.values);
  final customer = getCustomer();
  final description = VisitDescriptionModel(
    description: faker.lorem.words(20).join(' ').capitalize,
    attachments: List.generate(
      10,
      (index) => AttachmentModel(
        id: faker.randomGenerator.integer(500),
        url: FakeImages.randomImage(),
      ),
    ),
    voiceRecords: [
      const AttachmentModel(
        id: 10,
        url: "https://server8.mp3quran.net/afs/112.mp3",
      )
    ],
  );
  return VisitModel(
    id: id,
    name: name,
    status: getVisitStatus(),
    date: date,
    action: action,
    type: type,
    isRescheduled: faker.randomGenerator.boolean(),
    systems: getSystems(length: 1),
    customer: customer,
    engineers: getEngineers(length: 2),
    description: description,
  );
}

VisitStatusModel getVisitStatus() {
  List<VisitStatusModel> status = const[
    VisitStatusModel(id: 1, name: "Assigned"),
    VisitStatusModel(id: 2, name: "Confirm"),
    VisitStatusModel(id: 3, name: "Schedule"),
    VisitStatusModel(id: 4, name: "Running"),
    VisitStatusModel(id: 5, name: "Review"),
    VisitStatusModel(id: 5, name: "Done"),
  ];

  return status[faker.randomGenerator.integer(status.length - 1)];
}

List<VisitModel> getVisitList({int length = 50}) {
  final list = <VisitModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getVisit());
  }
  return list;
}

List<Map<String, dynamic>> mockVisitsDataResponse({int length = 50}) {
  final list = getVisitList();
  return list.map((e) => e.toJson()).toList();
}
