


import 'dart:math';

import 'package:faker/faker.dart';

import '../../domain/entities/key_value/key_value.dart';
import '../../domain/entities/safety_equipment/safety_equipment.dart';
import '../../domain/entities/system/system.dart';
import '../../domain/entities/test_equipment/test_equipment.dart';
import '../types/types.dart';
import 'equipments.dart';
import 'kpis.dart';


List<String> systemsNames=[
  "Fire Detection and Alarm Systems",
  "Private Fire Service Mains",
  "Water Storage Tanks",
  "Fire Extinguisher Systems",
  "Fire Pumps",
  "Private Fire Service Mains Systems",
  "Automatic Sprinkler Systems - Deluge System",
  "Foam–Water Sprinkler Systems",

];

SystemModel getSystem() {
  final id = faker.randomGenerator.integer(5000);
  final date = faker.date.dateTime(minYear: 2023, maxYear: 2023);
  final name =  systemsNames[Random().nextInt(systemsNames.length)];
  // final name = "SY/${date.year}/${date.month}/00${date.day}";
  final failures = faker.randomGenerator.element(FailureType.values);
  return SystemModel(
    id: id,
    name: name,
    lastCheckUp: date,

    failureType: failures,
    genericKpis: getKpis(length: 2)
        .map(
          (e) => e.copyWith(
        measuermentType: KpiMeasuermentType.singleChoice,
      ),
    )
        .toList(),
    equipments: getEquipments(
      length: faker.randomGenerator.integer(3, min: 1),
    ),
    safetyEquipments: getSafetyRequirements(length: 2),
    testEquipments: getTestRequirements(length: 2),
  );
}

List<SystemModel> getSystems({int length = 2}) {
  final list = <SystemModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getSystem());
  }
  return list;
}


List<TestRequirementModel> getTestRequirements({int length = 3}) {
  final list = <TestRequirementModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getTestRequirement());
  }
  return list;
}

List<SafetyRequirementModel> getSafetyRequirements({int length = 3}) {
  final list = <SafetyRequirementModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getSafetyRequirement());
  }
  return list;
}


List<KpiOptionModel> testReNames=[
  const KpiOptionModel(
      key:"Heat Gun",
      value: "https://www.dropbox.com/scl/fi/hqs9ol17vyitta9su2yta/heat.jpg?rlkey=nqp7un2tcianlyzu6ytri59iq&dl=1",
      label: ""
  ),
  const KpiOptionModel(
      key:"Flame tester",
      value: "https://www.dropbox.com/scl/fi/hqs9ol17vyitta9su2yta/heat.jpg?rlkey=nqp7un2tcianlyzu6ytri59iq&dl=1",
      // value: "https://ibb.co/L1gxv3b",
      label: ""
  ),
  const KpiOptionModel(
      key:"Hydrant Wrench",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key: "Ruler with 1⁄16 in.",
      value: "https://www.dropbox.com/scl/fi/hqs9ol17vyitta9su2yta/heat.jpg?rlkey=nqp7un2tcianlyzu6ytri59iq&dl=1",//default
      label: ""
  ),
  const KpiOptionModel(
      key:   "Smoke Tester",
      value: "https://ibb.co/RybsNzh",
      label: ""
  ),
  const KpiOptionModel(
      key:   "Timing Device",
      value: "http://64.226.85.20/web/image?model=test.equipment&field=image&id=7&unique=",
      label: ""
  ),
  const KpiOptionModel(
      key:   "Voltmeter",
      value: "https://ibb.co/23WnfcX",
      label: ""
  ),
];

TestRequirementModel getTestRequirement() {
  final id = faker.randomGenerator.integer(5000);
  final name = testReNames[Random().nextInt(testReNames.length)].key;
  // final name = faker.lorem.words(2).join(' ').capitalize;
  final description = faker.lorem.words(3).join(' ');
  return TestRequirementModel(
      id: id,
      name: name,
      // description: '',
      description: description,
      image: testReNames[Random().nextInt(testReNames.length)].value
    // image: FakeImages.randomImage(),
  );
}


List<KpiOptionModel> safetyReNames=[
  const KpiOptionModel(
      label:"",
      value: "",
      key: "Advise the monitoring service provider where service activities may cause a signal to be transmitted"
  ),
  const KpiOptionModel(
      key:"All input signals should be verified according to the system matrix of operation to ensure they create the appropriate outputs",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key:"Fire alarm system testing can be conducted using silent testing and the bypassing of emergency control functions",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key:"If on-site welding is to be carried out, it shall be in accordance with the requirements of the hot work procedures applicable to the building.NOTE: On-site welding should be avoided wherever possible particularly when sprinkler systems are inoperative",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key:"On completion of any routine service, return all controls to their prior state. When any function is left impaired, disabled or is not restored to ‘normal’, record in the system logbook and notify the owner or agent.",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key:"Tests of audible notification appliances and emergency control functions should be conducted at the conclusion of satisfactory tests of all inputs",
      value: "",
      label: ""
  ),
  const KpiOptionModel(
      key:"Disable the system to ensure that service activities cannot cause discharge of extinguishing agent.",
      value: "",
      label: ""
  ),
];

SafetyRequirementModel getSafetyRequirement() {
  final id = faker.randomGenerator.integer(5000);
  final name = safetyReNames[Random().nextInt(safetyReNames.length)].key;
  // final name = faker.lorem.words(2).join(' ').capitalize;
  final description = faker.lorem.words(20).join(' ');
  return SafetyRequirementModel(
      id: id,
      name: name,
      description: '',
      // description: description,
      // image:safetyReNames[Random().nextInt(safetyReNames.length)].key ,
      image:"http://64.226.85.20/web/image?model=test.equipment&field=image&id=7&unique="
    // image: FakeImages.randomImage(),
  );
}

List<Map<String, dynamic>> mockSystemDataResponse({int length = 50}) {
  final list = getSystems(length: length);
  return list.map((e) {
    return e.toJson();
  }).toList();
}