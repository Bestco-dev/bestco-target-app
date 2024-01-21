import 'dart:math';

import 'package:faker/faker.dart';

import '../../common/res/constants.dart';
import '../../domain/entities/key_value/key_value.dart';
import '../../domain/entities/kpi/kpi.dart';
import '../../domain/entities/kpi_usage/kpi_usage.dart';
import '../types/types.dart';

List<String> kpisNames=[
  "INSPECT all booster assemblies Pressure gauges and blanking caps, where fitted, are in good condition.",
  "INSPECT all booster assemblies the condition of washers on booster assembly connection inlets are in good condition.",
  "INSPECT Valve-regulated lead-acid (VRLA) batteries Verify marking of the month",
  "TEST VRLA battery and charger, Cell/Unit voltage test With the battery fully charged",
  "INSPECT detector sprinkler line valves are in the correct operating position",
  "REMOVE and CLEAN the strainer.",
  "Inspection revealed presence of MIC, zebra mussels, rust, and scale    ",
  "Concentration is inadequate to prevent freezing",
  "Test operation of automatically operated ventilation dampers.",
  "TEST the operation of the post-discharge ventilation system.",
  "Concealed sprinkler coverplates caulked or glued to ceiling",
  "INSPECT oil level is correct and visually assesses the condition of the oil.",
  "INSPECT regulator is locked and set in the correct position.",
];

KpiModel getKpi() {
  final id = faker.randomGenerator.integer(5000);
  final failures = faker.randomGenerator.element(FailureType.values);
  final measuermentType =
  faker.randomGenerator.element([KpiMeasuermentType.numberCounter,KpiMeasuermentType.singleChoice]);
  // faker.randomGenerator.element(KpiMeasuermentType.values);
  final name = kpisNames[Random().nextInt(kpisNames.length)];
  // final name = faker.lorem.words(5).join(' ').capitalize;
  return KpiModel(
    id: id,
    name: name,
    measuermentType: measuermentType,
    // measuermentType: measuermentType,
    failures: failures,
    options: getOptions(type: measuermentType),
    usage: getUsage(),
    // answers: [],
    // o: getAnswers(type: measuermentType),
  );
}

KpiUsageModel? getUsage() {
  // if (faker.randomGenerator.boolean()) {
  //   return null;
  // }
  return const KpiUsageModel(
      description: "It is recommended that lock-off valves be retrofitted to gaseous fire extinguishing systems which may result in unsafe concentrations of extinguishing agents developing in occupiable areas (e.g. CO2 systems). The installation of a lock-off valve introduces the possibility of a trapping agent in the pipework. As a result, additional safety devices, including means of indicating trapped pressure, means of manually venting trapped pressure, and a means of automatic pressure relief, should be installed in conjunction with the lock-off valve",
      link: "https://www.dropbox.com/scl/fi/mug1ni4m17501kdqj3ccl/document-1.pdf?rlkey=0gq3kk7jec7ei5ludkohcn79q&dl=1"
    // description: faker.lorem.words(20).join(' '),
    // link: faker.randomGenerator.boolean()
    //     ? null
    //     : "https://www.fluttercampus.com/sample.pdf",
  );
}

List<KpiModel> getKpis({int length = 3}) {
  final list = <KpiModel>[];
  for (var i = 0; i < length; i++) {
    list.add(getKpi());
  }
  return list;
}

List<KpiOptionModel> getOptions(
    {KpiMeasuermentType type = KpiMeasuermentType.singleChoice}) {
  List<KpiOptionModel> singleChoiceOptions = const [
    KpiOptionModel(key: "yes", label: "Yes"),
    KpiOptionModel(key: "no", label: "No"),
    // KpiOptionModel(key: "half_work", label: "Half work"),
    KpiOptionModel(key: ResConstants.notApplicableKey, label: "Not applicable"),
    // KpiOptionModel(key: "unreachable", label: "Unreachable"),
  ];
  // List<KpiOptionModel> numberOptions = const [
  //   KpiOptionModel(key: "heat", label: "Heat", unit: "joule (J)"),
  //   KpiOptionModel(key: "pressure", label: "Pressure", unit: "Pascal (Pa)"),
  //   // KeyValueModel(key: ResConstants.notApplicableKey, label: "Not applicable"),
  // ];
  List<KpiOptionModel> numberCounterOptions = const [
    KpiOptionModel(key: "yes", label: "Yes"),
    KpiOptionModel(key: "no", label: "No"),
    KpiOptionModel(key: ResConstants.notApplicableKey, label: "Not applicable"),
  ];



  switch (type) {

    case KpiMeasuermentType.singleChoice:
      return singleChoiceOptions;
    case KpiMeasuermentType.numberCounter:
    // return singleChoiceOptions;
      return numberCounterOptions;
    case KpiMeasuermentType.number:
      return numberCounterOptions;
  // return numberOptions;
  }
}

List<KpiOptionModel> getAnswers(
    {KpiMeasuermentType type = KpiMeasuermentType.singleChoice}) {
  List<KpiOptionModel> singleChoiceOptions = [
    const [
      KpiOptionModel(key: "yes", label: "Yes", value: 'yes'),
      KpiOptionModel(key: "no", label: "No", value: 'no'),
      KpiOptionModel(
          key: ResConstants.notApplicableKey, label: "Not applicable"),
    ][faker.randomGenerator.integer(2)]
  ];
  // List<KpiOptionModel> numberOptions = const [
  //   KpiOptionModel(key: "heat", label: "Heat", value: "20", unit: "joule (J)"),
  //   KpiOptionModel(
  //       key: "pressure", label: "Pressure", value: "34", unit: "Pascal (Pa)"),
  //   KpiOptionModel(
  //       key: ResConstants.notApplicableKey,
  //       label: "Humidity",
  //       value: "Not applicable"),
  // ];
  List<KpiOptionModel> numberCounterOptions = const [
    KpiOptionModel(key: "yes", label: "Yes", value: "20"),
    KpiOptionModel(key: "no", label: "No", value: "11"),
  ];
  if (faker.randomGenerator.boolean()) {
    numberCounterOptions = const [
      KpiOptionModel(
          key: ResConstants.notApplicableKey,
          label: "Not applicable",
          value: ""),
    ];
  }
  switch (type) {
    case KpiMeasuermentType.singleChoice:
      return singleChoiceOptions;
    case KpiMeasuermentType.numberCounter:
    // return singleChoiceOptions;
      return numberCounterOptions;
    case KpiMeasuermentType.number:
      return singleChoiceOptions;
  // return numberOptions;
  }
}
