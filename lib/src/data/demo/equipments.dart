import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/attachment/attachment.dart';
import '../../domain/entities/equipment/equipment.dart';
import '../../domain/entities/equipment_history/equipment_history.dart';
import '../../domain/entities/key_value/key_value.dart';
import '../types/types.dart';
import 'images.dart';
import 'kpis.dart';

// List<String> equipmentsNames=[
//   "AEROSOL SYSTEMS",
//   "Air Compressor",
//   "Antifreeze systems",
//   "Assessment of internal condition",
//   "Automatic Detection Equipment",
//   "Backflow Preventer",
//   "Backflow Preventer",
//   "Batteries",
//   "Booster Assembly",
//   "Carbon dioxide Fire Extinguishers",
// ];

List<KpiOptionModel> equipmentsNames = [
  const KpiOptionModel(
      key: "Actuator",
      value:
      "https://www.dropbox.com/scl/fi/x7q0n8sdutu16c70oa792/actuator.jpeg?rlkey=yhiob9omejdsct8m6mnrtfh5j&dl=1",
      label: ""),
  const KpiOptionModel(
      key: "Air Compressor",
      value:
      "https://www.dropbox.com/scl/fi/yzk4qfnu9imv5q7ciwqpy/aircomperser.jpeg?rlkey=c5cje0mxnrj39r4osb2gdl0zb&dl=1",
      // value: "https://ibb.co/L1gxv3b",
      label: ""),
  const KpiOptionModel(
      key: "Alarm Check Valves",
      value:
      "https://www.dropbox.com/scl/fi/f7bsaouvweuhsj5bgcy8h/alarm-che.png?rlkey=7373ykgldxa772ehltk64kyzh&dl=1",
      // value: "https://drive.google.com/uc?id=1OfEeRMPJONtLTGv88VUXpOwplw6TEyEq",
      label: ""),
  const KpiOptionModel(
      key: "Backflow Preventer",
      value:
      "https://www.dropbox.com/scl/fi/g387nra0unqhth3rfuvhi/backflow.jpeg?rlkey=94i1dwvzyloibxy7n9xmht3ud&dl=1",
      // value: "https://drive.google.com/uc?id=1OfEeRMPJONtLTGv88VUXpOwplw6TEyEq",//default
      label: ""),
  const KpiOptionModel(
      key: "Batteries",
      value:
      "https://www.dropbox.com/scl/fi/t5pfgt5ft245blcixx8nm/batteries.jpeg?rlkey=18ilrrfobkoiyxxuwqpdrm8lx&dl=1",
      // value: "https://drive.google.com/uc?id=17A5aQpr__VMvnJMu5DkLHjnciuqU-Shd",
      label: ""),
];

EquipmentModel equipmentModel() {
  final id = faker.randomGenerator.integer(5000);
  final failures = faker.randomGenerator.element(FailureType.values);
  final name = equipmentsNames[Random().nextInt(equipmentsNames.length)].key;
  // final name = faker.lorem.words(5).join(' ').capitalize;
  return EquipmentModel(
    id: id,
    name: name,
    image:
    equipmentsNames[Random().nextInt(equipmentsNames.length)].value ?? '',
    // image: FakeImages.randomImage(),
    failures: failures,
    kpis: getKpis(length: faker.randomGenerator.integer(10, min: 1)),
    attachments: List.generate(
      faker.randomGenerator.integer(10, min: 2),
          (index) => AttachmentModel(
        id: faker.randomGenerator.integer(500),
        url: FakeImages.randomImage(),
      ),
    ),
  );
}

List<EquipmentModel> getEquipments({int length = 4}) {
  final list = <EquipmentModel>[];
  for (var i = 0; i < length; i++) {
    list.add(equipmentModel());
  }
  return list;
}

List<EquipmentHistoryModel> getEquipmentHistory({int length = 3}) {
  final list = <EquipmentHistoryModel>[];
  for (var i = 0; i < length; i++) {
    final date = faker.date.dateTime(minYear: 2023, maxYear: 2023);
    list.add(
      EquipmentHistoryModel(
        date: date,
        kpis: getKpis(length: 4).map(
              (e) {
            final measuermentType =
            faker.randomGenerator.element(KpiMeasuermentType.values);
            return e.copyWith(
              measuermentType: measuermentType,
              options: getAnswers(type: measuermentType),
            );
          },
        ).toList(),
      ),
    );
  }
  return list;
}
