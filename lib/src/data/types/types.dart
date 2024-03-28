// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../locales/localization/l10n.dart';
//
// enum FailureType { full, critical, nonCritical, impairment }
//
// enum EquipmentType { mandetory, advance }
// enum TimeType { am, pm }
//
// enum RecurringRuleType { daily, weekly, monthly, yearly }
//
// enum KpiMeasuermentType { singleChoice, number, numberCounter }
//
// enum KpiType { inspection, maintenace, test }
//
// enum WorksheetType { pdf, googleSlide, text }
//
// enum VisitType { visit, maintenance, emergency }
//
// enum VisitAction { confirmationRequest, proceed, ideal }
//
// extension RecurringRuleTypeEx on RecurringRuleType {
//   String getPeriod(int interval) {
//     final i18n = Localization.current;
//     switch (this) {
//       case RecurringRuleType.daily:
//         return i18n.daysCount(interval);
//       case RecurringRuleType.weekly:
//         return i18n.weeksCount(interval);
//       case RecurringRuleType.monthly:
//         return i18n.monthCount(interval);
//       case RecurringRuleType.yearly:
//         return i18n.yearCount(interval);
//     }
//   }
// }
//
//
// // extension TimeTypeEx on TimeType {
// //   bool get canRequestForConfirmation => this == VisitAction.confirmationRequest;
// //
// //   bool get canProceed => this == VisitAction.proceed;
// //
// //   bool get isIdeal => this == VisitAction.ideal;
// // }
//
// extension VisitActionEx on VisitAction {
//   bool get canRequestForConfirmation => this == VisitAction.confirmationRequest;
//
//   bool get canProceed => this == VisitAction.proceed;
//
//   bool get isIdeal => this == VisitAction.ideal;
// }
//
// extension VisitTypeEx on VisitType {
//   bool get isEmergency => this == VisitType.emergency;
//   bool get isNormalVisit => this == VisitType.visit;
//   bool get isMaintenance => this == VisitType.maintenance;
//   Color get color {
//     switch (this) {
//       case VisitType.visit:
//         return Colors.green;
//       case VisitType.emergency:
//         return Colors.red;
//       case VisitType.maintenance:
//         return Colors.amber;
//     }
//   }
//
//   IconData get icon {
//     switch (this) {
//       case VisitType.visit:
//         return Iconsax.shield_search;
//       case VisitType.emergency:
//         return Iconsax.warning_2;
//       case VisitType.maintenance:
//         return Iconsax.scan;
//     }
//   }
//
//   Color get backgroundColor {
//     switch (this) {
//       case VisitType.visit:
//         return Colors.green;
//       case VisitType.emergency:
//         return Colors.red;
//       case VisitType.maintenance:
//         return Colors.amber;
//     }
//   }
//
//   String get translate {
//     final i18n = Localization.current;
//     switch (this) {
//       case VisitType.visit:
//         return i18n.scheduled;
//       case VisitType.emergency:
//         return i18n.emergency;
//       case VisitType.maintenance:
//         return i18n.maintenance;
//     }
//   }
// }
//
// // extension VisitStateEx on VisitStatus {
// //   Color get color {
// //     switch (this) {
// //       case VisitStatus.draft:
// //         return Colors.deepOrangeAccent;
// //       case VisitStatus.assign:
// //         return Colors.blue;
// //       case VisitStatus.confirm:
// //         return Colors.yellow;
// //       case VisitStatus.schedule:
// //         return Colors.teal;
// //       case VisitStatus.running:
// //         return Colors.green;
// //       case VisitStatus.review:
// //         return Colors.purple;
// //       case VisitStatus.done:
// //         return Colors.green;
// //     }
// //   }
// //
// //   String get translate {
// //     final i18n = Localization.current;
// //     switch (this) {
// //       case VisitStatus.draft:
// //         return i18n.draft;
// //       case VisitStatus.assign:
// //         return i18n.assigned;
// //       case VisitStatus.confirm:
// //         return i18n.confirm;
// //       case VisitStatus.schedule:
// //         return i18n.schedule;
// //       case VisitStatus.running:
// //         return i18n.running;
// //       case VisitStatus.review:
// //         return i18n.review;
// //       case VisitStatus.done:
// //         return i18n.done;
// //     }
// //   }
// // }
//
// extension FailureTypeEx on FailureType {
//   Color get color {
//     switch (this) {
//       case FailureType.full:
//         return Colors.green;
//       case FailureType.nonCritical:
//         return Colors.amber;
//       case FailureType.critical:
//         return Colors.orange;
//       //
//       //   case FailureType.impairment:
//       //   return Colors.red;
//       default:
//         return Colors.red;
//     }
//   }
//
//   IconData get icon {
//     switch (this) {
//       case FailureType.critical:
//         return Icons.error_outline_outlined;
//       case FailureType.impairment:
//         return Icons.error_outline_outlined;
//       default:
//         return Icons.check;
//     }
//   }
//
//   String get translate {
//     final i18n = Localization.current;
//     switch (this) {
//       case FailureType.full:
//         return i18n.fullWork;
//       case FailureType.critical:
//         return i18n.critical;
//       case FailureType.nonCritical:
//         return i18n.nonCritical;
//       case FailureType.impairment:
//         return i18n.impairment;
//     }
//   }
// }
//
// extension KpiMeasuermentTypeEx on KpiMeasuermentType {
//   bool get isSingleChoice => this == KpiMeasuermentType.singleChoice;
//   bool get isNumberCounter => this == KpiMeasuermentType.numberCounter;
//   bool get isNumber => this == KpiMeasuermentType.number;
// }
