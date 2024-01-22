// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'لا يوجد', one: 'يوم', other: '${count} أيام')}";

  static String m1(period, time) => "كل ${period} ${time}";

  static String m2(email) =>
      "تم إرسال رابط إعادة التعين إلى بريدك الإلكتروني (${email}) قم بالتحقق منه";

  static String m3(name) => "حياك, ${name}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'لا يوجد', one: 'شهر', other: '${count} شهور')}";

  static String m5(count) =>
      "${Intl.plural(count, zero: 'لا توجد ', one: 'نظام واحد', other: '${count} انظمه')}";

  static String m6(version) => "النسخة ${version}";

  static String m7(num) => " زيارة ${num} قبل";

  static String m8(type) => " زيارة ${type} ";

  static String m9(count) =>
      "${Intl.plural(count, zero: 'لا يوجد', one: 'إسبوع', other: '${count} أسابيع')}";

  static String m10(count) =>
      "${Intl.plural(count, zero: 'لا يوجد', one: 'سنه', other: '${count} سنين')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("عن"),
        "account": MessageLookupByLibrary.simpleMessage("الحساب"),
        "addNote": MessageLookupByLibrary.simpleMessage("اضف ملاحظة"),
        "address": MessageLookupByLibrary.simpleMessage("العنوان"),
        "arabic": MessageLookupByLibrary.simpleMessage("العربيه"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("هل أنت متأكد؟"),
        "assigned": MessageLookupByLibrary.simpleMessage("تم معين"),
        "attachment": MessageLookupByLibrary.simpleMessage("المرفقات"),
        "avatarUploadedDone": MessageLookupByLibrary.simpleMessage(
            "تم تحديث الصورة الشخصية بنجاح"),
        "calender": MessageLookupByLibrary.simpleMessage("التقويم"),
        "callCustomerService":
            MessageLookupByLibrary.simpleMessage("اتصل بخدمة العملاء"),
        "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
        "cancel": MessageLookupByLibrary.simpleMessage("إالغاء"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور"),
        "check": MessageLookupByLibrary.simpleMessage("تحقق"),
        "checkInfo": MessageLookupByLibrary.simpleMessage("تفاصيل التحقق"),
        "choseSystems":
            MessageLookupByLibrary.simpleMessage("اختر النظام/الأنظمة"),
        "choseTheEquipments":
            MessageLookupByLibrary.simpleMessage("اختر المعدات/المعدات"),
        "close": MessageLookupByLibrary.simpleMessage("إغلاق"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "contact_us": MessageLookupByLibrary.simpleMessage("تواصل معنا"),
        "critical": MessageLookupByLibrary.simpleMessage("شديد الأهمية"),
        "customer": MessageLookupByLibrary.simpleMessage("العميل"),
        "customer_details":
            MessageLookupByLibrary.simpleMessage("تفاصيل العميل"),
        "customers": MessageLookupByLibrary.simpleMessage("العملاء"),
        "dataRefreshSuccessfully":
            MessageLookupByLibrary.simpleMessage("تم تحديث البيانات بنجاح"),
        "date": MessageLookupByLibrary.simpleMessage("التاريخ"),
        "daysCount": m0,
        "description": MessageLookupByLibrary.simpleMessage("الوصف"),
        "doYouForgetYourPasswordn":
            MessageLookupByLibrary.simpleMessage("هل نسيت كلمه المرور.\n"),
        "done": MessageLookupByLibrary.simpleMessage("تم"),
        "draft": MessageLookupByLibrary.simpleMessage("جديد"),
        "email": MessageLookupByLibrary.simpleMessage("البريد إلكتروني"),
        "emergency": MessageLookupByLibrary.simpleMessage("طارئة"),
        "emergencyVisitProceed":
            MessageLookupByLibrary.simpleMessage("معالجة الزيارة الطارئة"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "equipmentsCheck": MessageLookupByLibrary.simpleMessage("فحص المعدات"),
        "equipmentsReport":
            MessageLookupByLibrary.simpleMessage("تقرير المعدات"),
        "equipmentsReview":
            MessageLookupByLibrary.simpleMessage("مراجعة المعدات"),
        "error": MessageLookupByLibrary.simpleMessage("مشكلة"),
        "everyPeriodMonths": m1,
        "fileNameNotFound":
            MessageLookupByLibrary.simpleMessage("إسم الملف غير موجود"),
        "fileNotFound": MessageLookupByLibrary.simpleMessage("الملف غير موجود"),
        "forgetEmailSend": m2,
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("إعادة تعين كلمة المرور"),
        "fullWork": MessageLookupByLibrary.simpleMessage("العمل الكامل"),
        "gallery": MessageLookupByLibrary.simpleMessage("المعرض"),
        "genericKpis":
            MessageLookupByLibrary.simpleMessage("مؤشرات الأداء العامة"),
        "gracePeriodDays": MessageLookupByLibrary.simpleMessage("فترة سماح"),
        "hiName": m3,
        "history": MessageLookupByLibrary.simpleMessage("السجل"),
        "howToUse": MessageLookupByLibrary.simpleMessage("كيف الاستعمال"),
        "howToUseDoc":
            MessageLookupByLibrary.simpleMessage("كيفية اختبار المعدة"),
        "http400Error": MessageLookupByLibrary.simpleMessage("طلب غير صالح"),
        "http401Error": MessageLookupByLibrary.simpleMessage("غير مصرح"),
        "http403Error": MessageLookupByLibrary.simpleMessage("ممنوع"),
        "http404Error": MessageLookupByLibrary.simpleMessage("غير موجود"),
        "http408Error":
            MessageLookupByLibrary.simpleMessage("إنتهت مهلة الإنتظار"),
        "http409Error": MessageLookupByLibrary.simpleMessage(
            "تعارض في معالجة البيانات, يرجى المحاولة مرة أخرى"),
        "http415Error":
            MessageLookupByLibrary.simpleMessage("نوع الوسائط غير مدعوم"),
        "http429Error": MessageLookupByLibrary.simpleMessage(
            "تم تجاوز الحد الأقصى لعدد الطلبات"),
        "http500Error":
            MessageLookupByLibrary.simpleMessage("خطأ داخلي في الخادم"),
        "http501Error": MessageLookupByLibrary.simpleMessage("غير معتمد"),
        "http503Error":
            MessageLookupByLibrary.simpleMessage("الخدمة غير متوفرة"),
        "impairment": MessageLookupByLibrary.simpleMessage("تلف"),
        "info": MessageLookupByLibrary.simpleMessage("المعلومات"),
        "information": MessageLookupByLibrary.simpleMessage("المعلومات"),
        "jobTitle": MessageLookupByLibrary.simpleMessage("المسمى الوظيفي"),
        "language": MessageLookupByLibrary.simpleMessage("اللغه"),
        "lastCheck": MessageLookupByLibrary.simpleMessage("اخر فحص"),
        "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "logout": MessageLookupByLibrary.simpleMessage("تسجيل خروج"),
        "logout_msg": MessageLookupByLibrary.simpleMessage(
            "تريد تسجيل الخروج من تطبيق Bestco"),
        "maintenance": MessageLookupByLibrary.simpleMessage("صيانة"),
        "maintenancePeriod":
            MessageLookupByLibrary.simpleMessage("فترة الصيانة"),
        "monthCount": m4,
        "moreInfo": MessageLookupByLibrary.simpleMessage("مزيد من المعلومات"),
        "name": MessageLookupByLibrary.simpleMessage("الأسم"),
        "newPassword":
            MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
        "next": MessageLookupByLibrary.simpleMessage("التالي"),
        "noDataPleasePullToRefresh": MessageLookupByLibrary.simpleMessage(
            "لا يوجد بيانات, يرجى سحب للتحديث"),
        "noEquipmentsFound":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على المعدات"),
        "noFileSelect":
            MessageLookupByLibrary.simpleMessage("لم يتم إختيار ملف"),
        "noHistoryFound":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على سجلات"),
        "noImageSelected":
            MessageLookupByLibrary.simpleMessage("لم يتم إختيار صورة"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("لا يوجد نتائج"),
        "noSystemsFound":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على أنظمة"),
        "nonCritical": MessageLookupByLibrary.simpleMessage("غير حرجة"),
        "notApplicable":
            MessageLookupByLibrary.simpleMessage("غير قابل للتطبيق"),
        "noteQue": MessageLookupByLibrary.simpleMessage(
            "هل ترغب في إضافة بعض الملاحظة؟"),
        "notifications": MessageLookupByLibrary.simpleMessage("التنبيهات"),
        "oK": MessageLookupByLibrary.simpleMessage("حسنا"),
        "oldPassword":
            MessageLookupByLibrary.simpleMessage("كلمة المرور القديمة"),
        "open": MessageLookupByLibrary.simpleMessage("فتح"),
        "ops": MessageLookupByLibrary.simpleMessage("عفوا"),
        "opsSomethingWentWrong":
            MessageLookupByLibrary.simpleMessage("عفوا, حدث خطأ ما"),
        "optional": MessageLookupByLibrary.simpleMessage("اختياري"),
        "password": MessageLookupByLibrary.simpleMessage("كلمه المرور"),
        "passwordUpdatedMessage":
            MessageLookupByLibrary.simpleMessage("تم تحديث كلمة المرور بنجاح"),
        "phone": MessageLookupByLibrary.simpleMessage("الهاتف"),
        "pleaseDescribeProblem":
            MessageLookupByLibrary.simpleMessage("يرجى وصف المشكلة"),
        "pleaseEnterYourName":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل أسمك"),
        "poweredBy": MessageLookupByLibrary.simpleMessage("Powered by"),
        "proceed": MessageLookupByLibrary.simpleMessage("معالجة"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "recent": MessageLookupByLibrary.simpleMessage("مؤخرآ"),
        "refresh": MessageLookupByLibrary.simpleMessage("إستعادة"),
        "remove": MessageLookupByLibrary.simpleMessage("حذف"),
        "requestConfirmationSendSuccessfullyMessage":
            MessageLookupByLibrary.simpleMessage(
                "تم إرسال طلبك بنجاح!\n الرجاء انتظار الرد من العميل"),
        "requestForConfirmation":
            MessageLookupByLibrary.simpleMessage("ارسال طلب تاكيد"),
        "requestStoragePermissionFile": MessageLookupByLibrary.simpleMessage(
            "يجب السماح بالوصول للملفات لإكمال العملية"),
        "required": MessageLookupByLibrary.simpleMessage("مطلوب"),
        "rescheduled": MessageLookupByLibrary.simpleMessage("أعيد جدولته"),
        "resetDone":
            MessageLookupByLibrary.simpleMessage("تم تعديل كلمة المرور بنجاح"),
        "resetNow": MessageLookupByLibrary.simpleMessage("إعادة تعيين"),
        "resetPasswordHint": MessageLookupByLibrary.simpleMessage(
            "قم بأدخل عنوان البريد الإلكتروني المرتبط بحسابك لتلقي رابط إعادة تعيين كلمة المرور."),
        "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "retryAgain": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "review": MessageLookupByLibrary.simpleMessage("مراجعة"),
        "running": MessageLookupByLibrary.simpleMessage("جارية"),
        "safetyRequirements":
            MessageLookupByLibrary.simpleMessage("متطلبات السلامة"),
        "save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "schedule": MessageLookupByLibrary.simpleMessage("مجولة"),
        "scheduled": MessageLookupByLibrary.simpleMessage("مجدوله"),
        "searchForEquipment":
            MessageLookupByLibrary.simpleMessage("البحث عن المعدات"),
        "searchForSystem":
            MessageLookupByLibrary.simpleMessage("البحث عن الانظمة"),
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("قم بإختيار اللغه"),
        "selected": MessageLookupByLibrary.simpleMessage("محددة"),
        "sequence": MessageLookupByLibrary.simpleMessage("التسلسل"),
        "stage": MessageLookupByLibrary.simpleMessage("المرحلة"),
        "status": MessageLookupByLibrary.simpleMessage("الحاله"),
        "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
        "success": MessageLookupByLibrary.simpleMessage("نجاح"),
        "system": MessageLookupByLibrary.simpleMessage("الانظمه"),
        "systems": MessageLookupByLibrary.simpleMessage("الانظمه"),
        "systemsCount": m5,
        "systemsSpecify": MessageLookupByLibrary.simpleMessage("تحديد الأنظمة"),
        "testRequirements":
            MessageLookupByLibrary.simpleMessage("متطلبات الإختبار"),
        "today": MessageLookupByLibrary.simpleMessage("اليوم"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("غداً"),
        "type": MessageLookupByLibrary.simpleMessage("النوع"),
        "unKnown": MessageLookupByLibrary.simpleMessage("مجهول"),
        "unknownError": MessageLookupByLibrary.simpleMessage("خطأ غير معروف"),
        "update": MessageLookupByLibrary.simpleMessage("تحديث"),
        "updatedDone": MessageLookupByLibrary.simpleMessage("تم التحديث بنجاح"),
        "url": MessageLookupByLibrary.simpleMessage("الرابط"),
        "username": MessageLookupByLibrary.simpleMessage("أسم المستخدم"),
        "validationInvalidPassword":
            MessageLookupByLibrary.simpleMessage("كلمة المرور غير صحيحه"),
        "validationPasswordPattern": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور يجب أن تحتوي على 8 أحرف على الأقل, واحدة منها حرف كبير وحرف صغير ورقم ورمز"),
        "validationRequired": MessageLookupByLibrary.simpleMessage("مطلوب"),
        "version": m6,
        "visit": MessageLookupByLibrary.simpleMessage("زيارة"),
        "visitBefore": MessageLookupByLibrary.simpleMessage("الزيارة السابقة"),
        "visitBeforeNum": m7,
        "visitDetails": MessageLookupByLibrary.simpleMessage("تفاصيل الزيارة"),
        "visitProceed": MessageLookupByLibrary.simpleMessage("معالجة الزيارة"),
        "visitReportSendSuccessfullyMessage":
            MessageLookupByLibrary.simpleMessage(
                "تم إرسال تقريرك بنجاح!\n الرجاء انتظار التأكيد من العميل"),
        "visitType": m8,
        "visits": MessageLookupByLibrary.simpleMessage("الزيارات"),
        "wait": MessageLookupByLibrary.simpleMessage("انتظر من فضلك ..."),
        "warning": MessageLookupByLibrary.simpleMessage("تحذير"),
        "weeksCount": m9,
        "welcome":
            MessageLookupByLibrary.simpleMessage("تقوم بعمل راىع استمر بذلك"),
        "whatsComing": MessageLookupByLibrary.simpleMessage("ما هو قادم"),
        "whatsappMessage": MessageLookupByLibrary.simpleMessage("رسالة واتساب"),
        "writeNote": MessageLookupByLibrary.simpleMessage("اكتب ملاحظتك"),
        "yearCount": m10,
        "yesterday": MessageLookupByLibrary.simpleMessage("أمس"),
        "yourCompany": MessageLookupByLibrary.simpleMessage("شركتك")
      };
}
