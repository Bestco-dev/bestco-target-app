import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../locales/localization/l10n.dart';

enum UserType { saleperson, supervisor, admin }

enum QuestionType {
  text_box,
  char_box,
  numerical_box,
  date,
  dateTime,
  simple_choice,
  multiple_choice,
}

enum OrderProductState {
  draft,
  sent,
  sale,
  done,
  cancel,
}

enum MainServiceType {
  finance,
  marking,
  cleaning,
  health,
  digital,
  consult,
  other
} //consu,service

enum ProductType { service, consu } //consu,service

enum CustomerType { person, company }

enum SalePersonStatus { active, unActive }

extension QuestionTypeEx on QuestionType {
  Color get color {
    switch (this) {
      case QuestionType.multiple_choice:
        return Colors.blue;

      case QuestionType.simple_choice:
        return Colors.blueGrey;

      case QuestionType.date || QuestionType.dateTime:
        return Colors.black;

      default:
        return Colors.teal;
    }
  }
}

extension OrderProductStateEx on OrderProductState {
  bool get isDraft => this == OrderProductState.draft;
  bool get isDone => this == OrderProductState.done;

  String get label {
    final i18n = Localization.current;
    switch (this) {
      case OrderProductState.draft:
        return "مبدئية";
      // return i18n.scheduled;
      case OrderProductState.sent:
        return "تم الارسال";
      case OrderProductState.sale:
        return "امر بيع";
      case OrderProductState.done:
        return "مكتملة";
      case OrderProductState.cancel:
        return "ملغية";
    }
  }

  Color get color {
    switch (this) {
      case OrderProductState.draft:
        return Colors.blue;

      case OrderProductState.cancel:
        return Colors.black;

      default:
        return Colors.blueGrey;
    }
  }
}

extension UserTypeEx on UserType {
  bool get isSaleperson => this == UserType.saleperson;
  bool get isSupervisor => this == UserType.supervisor;

  String get label {
    final i18n = Localization.current;
    switch (this) {
      case UserType.supervisor:
        return "مشرف";
      // return i18n.scheduled;
      case UserType.saleperson:
        return "مندوب";
      case UserType.admin:
        return "مدير";
      // return i18n.emergency;
    }
  }
}

extension SalePersonStausEx on SalePersonStatus {
  bool get isActive => this == SalePersonStatus.active;
  bool get isUnActive => this == SalePersonStatus.unActive;

  String get label {
    final i18n = Localization.current;
    switch (this) {
      case SalePersonStatus.active:
        return "نشظ";
      // return i18n.scheduled;
      case SalePersonStatus.unActive:
        return "غير نشط";
      // return i18n.emergency;
    }
  }
}

extension CustomerTypeEx on CustomerType {
  bool get isIndividual => this == CustomerType.person;
  bool get isCompany => this == CustomerType.company;

  String get value {
    final i18n = Localization.current;
    switch (this) {
      case CustomerType.person:
        return "فرد";
      // return i18n.scheduled;
      case CustomerType.company:
        return "مؤسسة";
      // return i18n.emergency;
    }
  }
}

extension ProductTypeEx on ProductType {
  bool get isService => this == ProductType.service;
  bool get isConsumable => this == ProductType.consu;

  String get name {
    final i18n = Localization.current;
    switch (this) {
      case ProductType.service:
        return "خدمي";
      // return i18n.scheduled;
      case ProductType.consu:
        return "إستهلاكي";
      // return i18n.emergency;
    }
  }
}
