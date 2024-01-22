

import '../../../locales/localization/l10n.dart';

enum UserType { saleperson, supervisor }

enum CustomerType { individual, company }

extension UserTypeEx on UserType {
  bool get isSaleperson => this == UserType.saleperson;
  bool get isSupervisor => this == UserType.supervisor;
}

extension CustomerTypeEx on CustomerType {
  bool get isIndividual => this == CustomerType.individual;
  bool get isCompany => this == CustomerType.company;

  String get name {
    final i18n = Localization.current;
    switch (this) {
      case CustomerType.individual:
        return "فرد";
        // return i18n.scheduled;
      case CustomerType.company:
        return "مؤسسة";
        // return i18n.emergency;

    }
  }
}
