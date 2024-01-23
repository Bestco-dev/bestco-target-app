// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `العربيه`
  String get arabic {
    return Intl.message(
      'العربيه',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `قم بإختيار اللغه`
  String get selectLanguage {
    return Intl.message(
      'قم بإختيار اللغه',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `إعادة تعيين`
  String get resetNow {
    return Intl.message(
      'إعادة تعيين',
      name: 'resetNow',
      desc: '',
      args: [],
    );
  }

  /// `أبحث عن {info}`
  String searchForItem(Object info) {
    return Intl.message(
      'أبحث عن $info',
      name: 'searchForItem',
      desc: '',
      args: [info],
    );
  }

  /// `إختر {info}`
  String selectItem(Object info) {
    return Intl.message(
      'إختر $info',
      name: 'selectItem',
      desc: '',
      args: [info],
    );
  }

  /// `هل نسيت كلمه المرور.\n`
  String get doYouForgetYourPasswordn {
    return Intl.message(
      'هل نسيت كلمه المرور.\n',
      name: 'doYouForgetYourPasswordn',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `مطلوب`
  String get required {
    return Intl.message(
      'مطلوب',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `أسم المستخدم`
  String get username {
    return Intl.message(
      'أسم المستخدم',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `كلمه المرور`
  String get password {
    return Intl.message(
      'كلمه المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `الرابط`
  String get url {
    return Intl.message(
      'الرابط',
      name: 'url',
      desc: '',
      args: [],
    );
  }

  /// `اللغه`
  String get language {
    return Intl.message(
      'اللغه',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `عن`
  String get about {
    return Intl.message(
      'عن',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل خروج`
  String get logout {
    return Intl.message(
      'تسجيل خروج',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `الحساب`
  String get account {
    return Intl.message(
      'الحساب',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `التنبيهات`
  String get notifications {
    return Intl.message(
      'التنبيهات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `الزيارات`
  String get visits {
    return Intl.message(
      'الزيارات',
      name: 'visits',
      desc: '',
      args: [],
    );
  }

  /// `إعادة تعين كلمة المرور`
  String get forgetPassword {
    return Intl.message(
      'إعادة تعين كلمة المرور',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `إرسال`
  String get submit {
    return Intl.message(
      'إرسال',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `قم بأدخل عنوان البريد الإلكتروني المرتبط بحسابك لتلقي رابط إعادة تعيين كلمة المرور.`
  String get resetPasswordHint {
    return Intl.message(
      'قم بأدخل عنوان البريد الإلكتروني المرتبط بحسابك لتلقي رابط إعادة تعيين كلمة المرور.',
      name: 'resetPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `طلب غير صالح`
  String get http400Error {
    return Intl.message(
      'طلب غير صالح',
      name: 'http400Error',
      desc: '',
      args: [],
    );
  }

  /// `غير مصرح`
  String get http401Error {
    return Intl.message(
      'غير مصرح',
      name: 'http401Error',
      desc: '',
      args: [],
    );
  }

  /// `ممنوع`
  String get http403Error {
    return Intl.message(
      'ممنوع',
      name: 'http403Error',
      desc: '',
      args: [],
    );
  }

  /// `غير موجود`
  String get http404Error {
    return Intl.message(
      'غير موجود',
      name: 'http404Error',
      desc: '',
      args: [],
    );
  }

  /// `تعارض في معالجة البيانات, يرجى المحاولة مرة أخرى`
  String get http409Error {
    return Intl.message(
      'تعارض في معالجة البيانات, يرجى المحاولة مرة أخرى',
      name: 'http409Error',
      desc: '',
      args: [],
    );
  }

  /// `إنتهت مهلة الإنتظار`
  String get http408Error {
    return Intl.message(
      'إنتهت مهلة الإنتظار',
      name: 'http408Error',
      desc: '',
      args: [],
    );
  }

  /// `نوع الوسائط غير مدعوم`
  String get http415Error {
    return Intl.message(
      'نوع الوسائط غير مدعوم',
      name: 'http415Error',
      desc: '',
      args: [],
    );
  }

  /// `تم تجاوز الحد الأقصى لعدد الطلبات`
  String get http429Error {
    return Intl.message(
      'تم تجاوز الحد الأقصى لعدد الطلبات',
      name: 'http429Error',
      desc: '',
      args: [],
    );
  }

  /// `خطأ داخلي في الخادم`
  String get http500Error {
    return Intl.message(
      'خطأ داخلي في الخادم',
      name: 'http500Error',
      desc: '',
      args: [],
    );
  }

  /// `غير معتمد`
  String get http501Error {
    return Intl.message(
      'غير معتمد',
      name: 'http501Error',
      desc: '',
      args: [],
    );
  }

  /// `الخدمة غير متوفرة`
  String get http503Error {
    return Intl.message(
      'الخدمة غير متوفرة',
      name: 'http503Error',
      desc: '',
      args: [],
    );
  }

  /// `خطأ غير معروف`
  String get unknownError {
    return Intl.message(
      'خطأ غير معروف',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `التقويم`
  String get calender {
    return Intl.message(
      'التقويم',
      name: 'calender',
      desc: '',
      args: [],
    );
  }

  /// `عفوا`
  String get ops {
    return Intl.message(
      'عفوا',
      name: 'ops',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد نتائج`
  String get noResultFound {
    return Intl.message(
      'لا يوجد نتائج',
      name: 'noResultFound',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد بيانات, يرجى سحب للتحديث`
  String get noDataPleasePullToRefresh {
    return Intl.message(
      'لا يوجد بيانات, يرجى سحب للتحديث',
      name: 'noDataPleasePullToRefresh',
      desc: '',
      args: [],
    );
  }

  /// `إعادة المحاولة`
  String get retryAgain {
    return Intl.message(
      'إعادة المحاولة',
      name: 'retryAgain',
      desc: '',
      args: [],
    );
  }

  /// `إعادة المحاولة`
  String get retry {
    return Intl.message(
      'إعادة المحاولة',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الزيارة`
  String get visitDetails {
    return Intl.message(
      'تفاصيل الزيارة',
      name: 'visitDetails',
      desc: '',
      args: [],
    );
  }

  /// `الملف الشخصي`
  String get profile {
    return Intl.message(
      'الملف الشخصي',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `يجب السماح بالوصول للملفات لإكمال العملية`
  String get requestStoragePermissionFile {
    return Intl.message(
      'يجب السماح بالوصول للملفات لإكمال العملية',
      name: 'requestStoragePermissionFile',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم إختيار ملف`
  String get noFileSelect {
    return Intl.message(
      'لم يتم إختيار ملف',
      name: 'noFileSelect',
      desc: '',
      args: [],
    );
  }

  /// `تحديث`
  String get update {
    return Intl.message(
      'تحديث',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `تغيير كلمة المرور`
  String get changePassword {
    return Intl.message(
      'تغيير كلمة المرور',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور القديمة`
  String get oldPassword {
    return Intl.message(
      'كلمة المرور القديمة',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور الجديدة`
  String get newPassword {
    return Intl.message(
      'كلمة المرور الجديدة',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور غير صحيحه`
  String get validationInvalidPassword {
    return Intl.message(
      'كلمة المرور غير صحيحه',
      name: 'validationInvalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل, واحدة منها حرف كبير وحرف صغير ورقم ورمز`
  String get validationPasswordPattern {
    return Intl.message(
      'كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل, واحدة منها حرف كبير وحرف صغير ورقم ورمز',
      name: 'validationPasswordPattern',
      desc: '',
      args: [],
    );
  }

  /// `تم تحديث كلمة المرور بنجاح`
  String get passwordUpdatedMessage {
    return Intl.message(
      'تم تحديث كلمة المرور بنجاح',
      name: 'passwordUpdatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `عفوا, حدث خطأ ما`
  String get opsSomethingWentWrong {
    return Intl.message(
      'عفوا, حدث خطأ ما',
      name: 'opsSomethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `الملف غير موجود`
  String get fileNotFound {
    return Intl.message(
      'الملف غير موجود',
      name: 'fileNotFound',
      desc: '',
      args: [],
    );
  }

  /// `إسم الملف غير موجود`
  String get fileNameNotFound {
    return Intl.message(
      'إسم الملف غير موجود',
      name: 'fileNameNotFound',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم إختيار صورة`
  String get noImageSelected {
    return Intl.message(
      'لم يتم إختيار صورة',
      name: 'noImageSelected',
      desc: '',
      args: [],
    );
  }

  /// `تم تحديث الصورة الشخصية بنجاح`
  String get avatarUploadedDone {
    return Intl.message(
      'تم تحديث الصورة الشخصية بنجاح',
      name: 'avatarUploadedDone',
      desc: '',
      args: [],
    );
  }

  /// `تم التحديث بنجاح`
  String get updatedDone {
    return Intl.message(
      'تم التحديث بنجاح',
      name: 'updatedDone',
      desc: '',
      args: [],
    );
  }

  /// `مطلوب`
  String get validationRequired {
    return Intl.message(
      'مطلوب',
      name: 'validationRequired',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك أدخل أسمك`
  String get pleaseEnterYourName {
    return Intl.message(
      'من فضلك أدخل أسمك',
      name: 'pleaseEnterYourName',
      desc: '',
      args: [],
    );
  }

  /// `الأسم`
  String get name {
    return Intl.message(
      'الأسم',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `المعلومات`
  String get information {
    return Intl.message(
      'المعلومات',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور`
  String get confirmPassword {
    return Intl.message(
      'تأكيد كلمة المرور',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `جديد`
  String get draft {
    return Intl.message(
      'جديد',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `تم معين`
  String get assigned {
    return Intl.message(
      'تم معين',
      name: 'assigned',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get confirm {
    return Intl.message(
      'تأكيد',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `مجولة`
  String get schedule {
    return Intl.message(
      'مجولة',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `جارية`
  String get running {
    return Intl.message(
      'جارية',
      name: 'running',
      desc: '',
      args: [],
    );
  }

  /// `مراجعة`
  String get review {
    return Intl.message(
      'مراجعة',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `تم`
  String get done {
    return Intl.message(
      'تم',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `زيارة`
  String get visit {
    return Intl.message(
      'زيارة',
      name: 'visit',
      desc: '',
      args: [],
    );
  }

  /// `طارئة`
  String get emergency {
    return Intl.message(
      'طارئة',
      name: 'emergency',
      desc: '',
      args: [],
    );
  }

  /// `صيانة`
  String get maintenance {
    return Intl.message(
      'صيانة',
      name: 'maintenance',
      desc: '',
      args: [],
    );
  }

  /// ` زيارة {type} `
  String visitType(Object type) {
    return Intl.message(
      ' زيارة $type ',
      name: 'visitType',
      desc: '',
      args: [type],
    );
  }

  /// `مؤخرآ`
  String get recent {
    return Intl.message(
      'مؤخرآ',
      name: 'recent',
      desc: '',
      args: [],
    );
  }

  /// `اليوم`
  String get today {
    return Intl.message(
      'اليوم',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `مجدوله`
  String get scheduled {
    return Intl.message(
      'مجدوله',
      name: 'scheduled',
      desc: '',
      args: [],
    );
  }

  /// `تحقق`
  String get check {
    return Intl.message(
      'تحقق',
      name: 'check',
      desc: '',
      args: [],
    );
  }

  /// `تقوم بعمل راىع استمر بذلك`
  String get welcome {
    return Intl.message(
      'تقوم بعمل راىع استمر بذلك',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `حياك, {name}`
  String hiName(Object name) {
    return Intl.message(
      'حياك, $name',
      name: 'hiName',
      desc: '',
      args: [name],
    );
  }

  /// `الانظمه`
  String get system {
    return Intl.message(
      'الانظمه',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{لا توجد } one{نظام واحد} other{{count} انظمه}}`
  String systemsCount(num count) {
    return Intl.plural(
      count,
      zero: 'لا توجد ',
      one: 'نظام واحد',
      other: '$count انظمه',
      name: 'systemsCount',
      desc: '',
      args: [count],
    );
  }

  /// `الانظمه`
  String get systems {
    return Intl.message(
      'الانظمه',
      name: 'systems',
      desc: '',
      args: [],
    );
  }

  /// `النوع`
  String get type {
    return Intl.message(
      'النوع',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `الحاله`
  String get status {
    return Intl.message(
      'الحاله',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ`
  String get date {
    return Intl.message(
      'التاريخ',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `العميل`
  String get customer {
    return Intl.message(
      'العميل',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `العملاء`
  String get customers {
    return Intl.message(
      'العملاء',
      name: 'customers',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل العميل`
  String get customer_details {
    return Intl.message(
      'تفاصيل العميل',
      name: 'customer_details',
      desc: '',
      args: [],
    );
  }

  /// `العنوان`
  String get address {
    return Intl.message(
      'العنوان',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل التحقق`
  String get checkInfo {
    return Intl.message(
      'تفاصيل التحقق',
      name: 'checkInfo',
      desc: '',
      args: [],
    );
  }

  /// `فترة الصيانة`
  String get maintenancePeriod {
    return Intl.message(
      'فترة الصيانة',
      name: 'maintenancePeriod',
      desc: '',
      args: [],
    );
  }

  /// `كل {period} {time}`
  String everyPeriodMonths(Object period, Object time) {
    return Intl.message(
      'كل $period $time',
      name: 'everyPeriodMonths',
      desc: '',
      args: [period, time],
    );
  }

  /// `التسلسل`
  String get sequence {
    return Intl.message(
      'التسلسل',
      name: 'sequence',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{لا يوجد} one{يوم} other{{count} أيام}}`
  String daysCount(num count) {
    return Intl.plural(
      count,
      zero: 'لا يوجد',
      one: 'يوم',
      other: '$count أيام',
      name: 'daysCount',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero{لا يوجد} one{إسبوع} other{{count} أسابيع}}`
  String weeksCount(num count) {
    return Intl.plural(
      count,
      zero: 'لا يوجد',
      one: 'إسبوع',
      other: '$count أسابيع',
      name: 'weeksCount',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero{لا يوجد} one{شهر} other{{count} شهور}}`
  String monthCount(num count) {
    return Intl.plural(
      count,
      zero: 'لا يوجد',
      one: 'شهر',
      other: '$count شهور',
      name: 'monthCount',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero{لا يوجد} one{سنه} other{{count} سنين}}`
  String yearCount(num count) {
    return Intl.plural(
      count,
      zero: 'لا يوجد',
      one: 'سنه',
      other: '$count سنين',
      name: 'yearCount',
      desc: '',
      args: [count],
    );
  }

  /// `فترة سماح`
  String get gracePeriodDays {
    return Intl.message(
      'فترة سماح',
      name: 'gracePeriodDays',
      desc: '',
      args: [],
    );
  }

  /// `متطلبات الإختبار`
  String get testRequirements {
    return Intl.message(
      'متطلبات الإختبار',
      name: 'testRequirements',
      desc: '',
      args: [],
    );
  }

  /// `معالجة`
  String get proceed {
    return Intl.message(
      'معالجة',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `متطلبات السلامة`
  String get safetyRequirements {
    return Intl.message(
      'متطلبات السلامة',
      name: 'safetyRequirements',
      desc: '',
      args: [],
    );
  }

  /// `مؤشرات الأداء العامة`
  String get genericKpis {
    return Intl.message(
      'مؤشرات الأداء العامة',
      name: 'genericKpis',
      desc: '',
      args: [],
    );
  }

  /// `ما هو قادم`
  String get whatsComing {
    return Intl.message(
      'ما هو قادم',
      name: 'whatsComing',
      desc: '',
      args: [],
    );
  }

  /// `المسمى الوظيفي`
  String get jobTitle {
    return Intl.message(
      'المسمى الوظيفي',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `البريد إلكتروني`
  String get email {
    return Intl.message(
      'البريد إلكتروني',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `الهاتف`
  String get phone {
    return Intl.message(
      'الهاتف',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `شركتك`
  String get yourCompany {
    return Intl.message(
      'شركتك',
      name: 'yourCompany',
      desc: '',
      args: [],
    );
  }

  /// `تريد تسجيل الخروج من تطبيق Bestco`
  String get logout_msg {
    return Intl.message(
      'تريد تسجيل الخروج من تطبيق Bestco',
      name: 'logout_msg',
      desc: '',
      args: [],
    );
  }

  /// `المعلومات`
  String get info {
    return Intl.message(
      'المعلومات',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `اخر فحص`
  String get lastCheck {
    return Intl.message(
      'اخر فحص',
      name: 'lastCheck',
      desc: '',
      args: [],
    );
  }

  /// `الوصف`
  String get description {
    return Intl.message(
      'الوصف',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `أمس`
  String get yesterday {
    return Intl.message(
      'أمس',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `غداً`
  String get tomorrow {
    return Intl.message(
      'غداً',
      name: 'tomorrow',
      desc: '',
      args: [],
    );
  }

  /// `العمل الكامل`
  String get fullWork {
    return Intl.message(
      'العمل الكامل',
      name: 'fullWork',
      desc: '',
      args: [],
    );
  }

  /// `شديد الأهمية`
  String get critical {
    return Intl.message(
      'شديد الأهمية',
      name: 'critical',
      desc: '',
      args: [],
    );
  }

  /// `غير حرجة`
  String get nonCritical {
    return Intl.message(
      'غير حرجة',
      name: 'nonCritical',
      desc: '',
      args: [],
    );
  }

  /// `تلف`
  String get impairment {
    return Intl.message(
      'تلف',
      name: 'impairment',
      desc: '',
      args: [],
    );
  }

  /// `معالجة الزيارة`
  String get visitProceed {
    return Intl.message(
      'معالجة الزيارة',
      name: 'visitProceed',
      desc: '',
      args: [],
    );
  }

  /// `المرحلة`
  String get stage {
    return Intl.message(
      'المرحلة',
      name: 'stage',
      desc: '',
      args: [],
    );
  }

  /// `اضف ملاحظة`
  String get addNote {
    return Intl.message(
      'اضف ملاحظة',
      name: 'addNote',
      desc: '',
      args: [],
    );
  }

  /// `هل ترغب في إضافة بعض الملاحظة؟`
  String get noteQue {
    return Intl.message(
      'هل ترغب في إضافة بعض الملاحظة؟',
      name: 'noteQue',
      desc: '',
      args: [],
    );
  }

  /// `اكتب ملاحظتك`
  String get writeNote {
    return Intl.message(
      'اكتب ملاحظتك',
      name: 'writeNote',
      desc: '',
      args: [],
    );
  }

  /// `التالي`
  String get next {
    return Intl.message(
      'التالي',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `مراجعة المعدات`
  String get equipmentsReview {
    return Intl.message(
      'مراجعة المعدات',
      name: 'equipmentsReview',
      desc: '',
      args: [],
    );
  }

  /// `فحص المعدات`
  String get equipmentsCheck {
    return Intl.message(
      'فحص المعدات',
      name: 'equipmentsCheck',
      desc: '',
      args: [],
    );
  }

  /// `تقرير المعدات`
  String get equipmentsReport {
    return Intl.message(
      'تقرير المعدات',
      name: 'equipmentsReport',
      desc: '',
      args: [],
    );
  }

  /// `حفظ`
  String get save {
    return Intl.message(
      'حفظ',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `معالجة الزيارة الطارئة`
  String get emergencyVisitProceed {
    return Intl.message(
      'معالجة الزيارة الطارئة',
      name: 'emergencyVisitProceed',
      desc: '',
      args: [],
    );
  }

  /// `يرجى وصف المشكلة`
  String get pleaseDescribeProblem {
    return Intl.message(
      'يرجى وصف المشكلة',
      name: 'pleaseDescribeProblem',
      desc: '',
      args: [],
    );
  }

  /// `تحديد الأنظمة`
  String get systemsSpecify {
    return Intl.message(
      'تحديد الأنظمة',
      name: 'systemsSpecify',
      desc: '',
      args: [],
    );
  }

  /// `اختر النظام/الأنظمة`
  String get choseSystems {
    return Intl.message(
      'اختر النظام/الأنظمة',
      name: 'choseSystems',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم العثور على أنظمة`
  String get noSystemsFound {
    return Intl.message(
      'لم يتم العثور على أنظمة',
      name: 'noSystemsFound',
      desc: '',
      args: [],
    );
  }

  /// `البحث عن الانظمة`
  String get searchForSystem {
    return Intl.message(
      'البحث عن الانظمة',
      name: 'searchForSystem',
      desc: '',
      args: [],
    );
  }

  /// `محددة`
  String get selected {
    return Intl.message(
      'محددة',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `حذف`
  String get remove {
    return Intl.message(
      'حذف',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `اختر المعدات/المعدات`
  String get choseTheEquipments {
    return Intl.message(
      'اختر المعدات/المعدات',
      name: 'choseTheEquipments',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم العثور على المعدات`
  String get noEquipmentsFound {
    return Intl.message(
      'لم يتم العثور على المعدات',
      name: 'noEquipmentsFound',
      desc: '',
      args: [],
    );
  }

  /// `البحث عن المعدات`
  String get searchForEquipment {
    return Intl.message(
      'البحث عن المعدات',
      name: 'searchForEquipment',
      desc: '',
      args: [],
    );
  }

  /// `مجهول`
  String get unKnown {
    return Intl.message(
      'مجهول',
      name: 'unKnown',
      desc: '',
      args: [],
    );
  }

  /// `السجل`
  String get history {
    return Intl.message(
      'السجل',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم العثور على سجلات`
  String get noHistoryFound {
    return Intl.message(
      'لم يتم العثور على سجلات',
      name: 'noHistoryFound',
      desc: '',
      args: [],
    );
  }

  /// `إستعادة`
  String get refresh {
    return Intl.message(
      'إستعادة',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `الزيارة السابقة`
  String get visitBefore {
    return Intl.message(
      'الزيارة السابقة',
      name: 'visitBefore',
      desc: '',
      args: [],
    );
  }

  /// ` زيارة {num} قبل`
  String visitBeforeNum(Object num) {
    return Intl.message(
      ' زيارة $num قبل',
      name: 'visitBeforeNum',
      desc: '',
      args: [num],
    );
  }

  /// `مزيد من المعلومات`
  String get moreInfo {
    return Intl.message(
      'مزيد من المعلومات',
      name: 'moreInfo',
      desc: '',
      args: [],
    );
  }

  /// `المعرض`
  String get gallery {
    return Intl.message(
      'المعرض',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `الكاميرا`
  String get camera {
    return Intl.message(
      'الكاميرا',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `المرفقات`
  String get attachment {
    return Intl.message(
      'المرفقات',
      name: 'attachment',
      desc: '',
      args: [],
    );
  }

  /// `اختياري`
  String get optional {
    return Intl.message(
      'اختياري',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `غير قابل للتطبيق`
  String get notApplicable {
    return Intl.message(
      'غير قابل للتطبيق',
      name: 'notApplicable',
      desc: '',
      args: [],
    );
  }

  /// `كيفية اختبار المعدة`
  String get howToUseDoc {
    return Intl.message(
      'كيفية اختبار المعدة',
      name: 'howToUseDoc',
      desc: '',
      args: [],
    );
  }

  /// `كيف الاستعمال`
  String get howToUse {
    return Intl.message(
      'كيف الاستعمال',
      name: 'howToUse',
      desc: '',
      args: [],
    );
  }

  /// `فتح`
  String get open {
    return Intl.message(
      'فتح',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `إغلاق`
  String get close {
    return Intl.message(
      'إغلاق',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `نجاح`
  String get success {
    return Intl.message(
      'نجاح',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `مشكلة`
  String get error {
    return Intl.message(
      'مشكلة',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `تحذير`
  String get warning {
    return Intl.message(
      'تحذير',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `إالغاء`
  String get cancel {
    return Intl.message(
      'إالغاء',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `حسنا`
  String get oK {
    return Intl.message(
      'حسنا',
      name: 'oK',
      desc: '',
      args: [],
    );
  }

  /// `هل أنت متأكد؟`
  String get areYouSure {
    return Intl.message(
      'هل أنت متأكد؟',
      name: 'areYouSure',
      desc: '',
      args: [],
    );
  }

  /// `انتظر من فضلك ...`
  String get wait {
    return Intl.message(
      'انتظر من فضلك ...',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال تقريرك بنجاح!\n الرجاء انتظار التأكيد من العميل`
  String get visitReportSendSuccessfullyMessage {
    return Intl.message(
      'تم إرسال تقريرك بنجاح!\n الرجاء انتظار التأكيد من العميل',
      name: 'visitReportSendSuccessfullyMessage',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال طلبك بنجاح!\n الرجاء انتظار الرد من العميل`
  String get requestConfirmationSendSuccessfullyMessage {
    return Intl.message(
      'تم إرسال طلبك بنجاح!\n الرجاء انتظار الرد من العميل',
      name: 'requestConfirmationSendSuccessfullyMessage',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال رابط إعادة التعين إلى بريدك الإلكتروني ({email}) قم بالتحقق منه`
  String forgetEmailSend(Object email) {
    return Intl.message(
      'تم إرسال رابط إعادة التعين إلى بريدك الإلكتروني ($email) قم بالتحقق منه',
      name: 'forgetEmailSend',
      desc: '',
      args: [email],
    );
  }

  /// `تم تعديل كلمة المرور بنجاح`
  String get resetDone {
    return Intl.message(
      'تم تعديل كلمة المرور بنجاح',
      name: 'resetDone',
      desc: '',
      args: [],
    );
  }

  /// `تم تحديث البيانات بنجاح`
  String get dataRefreshSuccessfully {
    return Intl.message(
      'تم تحديث البيانات بنجاح',
      name: 'dataRefreshSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `تواصل معنا`
  String get contact_us {
    return Intl.message(
      'تواصل معنا',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `النسخة {version}`
  String version(Object version) {
    return Intl.message(
      'النسخة $version',
      name: 'version',
      desc: '',
      args: [version],
    );
  }

  /// `Powered by`
  String get poweredBy {
    return Intl.message(
      'Powered by',
      name: 'poweredBy',
      desc: '',
      args: [],
    );
  }

  /// `رسالة واتساب`
  String get whatsappMessage {
    return Intl.message(
      'رسالة واتساب',
      name: 'whatsappMessage',
      desc: '',
      args: [],
    );
  }

  /// `اتصل بخدمة العملاء`
  String get callCustomerService {
    return Intl.message(
      'اتصل بخدمة العملاء',
      name: 'callCustomerService',
      desc: '',
      args: [],
    );
  }

  /// `أعيد جدولته`
  String get rescheduled {
    return Intl.message(
      'أعيد جدولته',
      name: 'rescheduled',
      desc: '',
      args: [],
    );
  }

  /// `ارسال طلب تاكيد`
  String get requestForConfirmation {
    return Intl.message(
      'ارسال طلب تاكيد',
      name: 'requestForConfirmation',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
