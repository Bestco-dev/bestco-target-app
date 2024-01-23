// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'No day', one: 'One day', other: '${count} days')}";

  static String m1(period, time) => "Every ${period} ${time}";

  static String m2(email) =>
      "Reset link was sent to your email (${email}) check it out";

  static String m3(name) => "Hi, ${name}";

  static String m4(count) =>
      "${Intl.plural(count, zero: 'No month', one: 'One month', other: '${count} months')}";

  static String m5(info) => "Search for ${info}";

  static String m6(info) => "Select ${info}";

  static String m7(count) =>
      "${Intl.plural(count, zero: 'No systems', one: 'One system', other: '${count} systems')}";

  static String m8(version) => "Version ${version}";

  static String m9(num) => "${num} Visit before";

  static String m10(type) => "${type} visit";

  static String m11(count) =>
      "${Intl.plural(count, zero: 'No week', one: 'One week', other: '${count} weeks')}";

  static String m12(count) =>
      "${Intl.plural(count, zero: 'No year', one: 'One year', other: '${count} years')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "account": MessageLookupByLibrary.simpleMessage("Account"),
        "addNote": MessageLookupByLibrary.simpleMessage("Add note"),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "arabic": MessageLookupByLibrary.simpleMessage("العربيه"),
        "areYouSure": MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "assigned": MessageLookupByLibrary.simpleMessage("Assigned"),
        "attachment": MessageLookupByLibrary.simpleMessage("Attachments"),
        "avatarUploadedDone": MessageLookupByLibrary.simpleMessage(
            "Avatar uploaded successfully"),
        "calender": MessageLookupByLibrary.simpleMessage("Calender"),
        "callCustomerService":
            MessageLookupByLibrary.simpleMessage("Call Customers service"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("Change password"),
        "check": MessageLookupByLibrary.simpleMessage("Check"),
        "checkInfo": MessageLookupByLibrary.simpleMessage("Check info"),
        "choseSystems":
            MessageLookupByLibrary.simpleMessage("Choose the system/s"),
        "choseTheEquipments":
            MessageLookupByLibrary.simpleMessage("Choose the Equipment/s"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "contact_us": MessageLookupByLibrary.simpleMessage("Contact us"),
        "critical": MessageLookupByLibrary.simpleMessage("Critical"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "customer_details":
            MessageLookupByLibrary.simpleMessage("Customer details"),
        "customers": MessageLookupByLibrary.simpleMessage("Customers"),
        "dataRefreshSuccessfully":
            MessageLookupByLibrary.simpleMessage("Data Refresh successfully"),
        "date": MessageLookupByLibrary.simpleMessage("Date"),
        "daysCount": m0,
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "doYouForgetYourPasswordn": MessageLookupByLibrary.simpleMessage(
            "Do you forget your password.\n"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "draft": MessageLookupByLibrary.simpleMessage("Draft"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emergency": MessageLookupByLibrary.simpleMessage("Emergency"),
        "emergencyVisitProceed":
            MessageLookupByLibrary.simpleMessage("Emergency Visit Proceed"),
        "english": MessageLookupByLibrary.simpleMessage("English"),
        "equipmentsCheck":
            MessageLookupByLibrary.simpleMessage("Equipments Check"),
        "equipmentsReport":
            MessageLookupByLibrary.simpleMessage("Equipments Report"),
        "equipmentsReview":
            MessageLookupByLibrary.simpleMessage("Equipments review"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "everyPeriodMonths": m1,
        "fileNameNotFound":
            MessageLookupByLibrary.simpleMessage("File name not found"),
        "fileNotFound": MessageLookupByLibrary.simpleMessage("File not found"),
        "forgetEmailSend": m2,
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("Forget password"),
        "fullWork": MessageLookupByLibrary.simpleMessage("Full Work"),
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "genericKpis": MessageLookupByLibrary.simpleMessage("Generic KPIs"),
        "gracePeriodDays":
            MessageLookupByLibrary.simpleMessage("Grace Period (days)"),
        "hiName": m3,
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "howToUse": MessageLookupByLibrary.simpleMessage("How to use"),
        "howToUseDoc": MessageLookupByLibrary.simpleMessage("How to test doc"),
        "http400Error": MessageLookupByLibrary.simpleMessage("Bad request"),
        "http401Error":
            MessageLookupByLibrary.simpleMessage("unauthorised access"),
        "http404Error": MessageLookupByLibrary.simpleMessage("Not Found"),
        "http500Error":
            MessageLookupByLibrary.simpleMessage("Internal Server Error"),
        "http501Error": MessageLookupByLibrary.simpleMessage("Bad Gateway"),
        "impairment": MessageLookupByLibrary.simpleMessage("Impairment"),
        "info": MessageLookupByLibrary.simpleMessage("Info"),
        "information": MessageLookupByLibrary.simpleMessage("Information"),
        "jobTitle": MessageLookupByLibrary.simpleMessage("Job title"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastCheck": MessageLookupByLibrary.simpleMessage("Last check"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "logout_msg": MessageLookupByLibrary.simpleMessage(
            "You want to logout of Bestco app"),
        "maintenance": MessageLookupByLibrary.simpleMessage("Maintenance"),
        "maintenancePeriod":
            MessageLookupByLibrary.simpleMessage("Maintenance Period"),
        "monthCount": m4,
        "moreInfo": MessageLookupByLibrary.simpleMessage("More info"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noDataPleasePullToRefresh": MessageLookupByLibrary.simpleMessage(
            "No data, please pull to refresh"),
        "noEquipmentsFound":
            MessageLookupByLibrary.simpleMessage("No equipments found"),
        "noFileSelect": MessageLookupByLibrary.simpleMessage(
            "Please select file to continue."),
        "noHistoryFound":
            MessageLookupByLibrary.simpleMessage("No History Found"),
        "noImageSelected":
            MessageLookupByLibrary.simpleMessage("There is no image selected"),
        "noResultFound": MessageLookupByLibrary.simpleMessage("Nothing!"),
        "noSystemsFound":
            MessageLookupByLibrary.simpleMessage("No Systems found"),
        "nonCritical": MessageLookupByLibrary.simpleMessage("Non Critical"),
        "notApplicable": MessageLookupByLibrary.simpleMessage("Not Applicable"),
        "noteQue": MessageLookupByLibrary.simpleMessage(
            "Would you like to add some note?"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "oK": MessageLookupByLibrary.simpleMessage("OK"),
        "oldPassword": MessageLookupByLibrary.simpleMessage("Old password"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "ops": MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "opsSomethingWentWrong":
            MessageLookupByLibrary.simpleMessage("Ops something went wrong!"),
        "optional": MessageLookupByLibrary.simpleMessage("Optional"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordUpdatedMessage": MessageLookupByLibrary.simpleMessage(
            "Password has been updated successfully"),
        "phone": MessageLookupByLibrary.simpleMessage("phone"),
        "pleaseDescribeProblem":
            MessageLookupByLibrary.simpleMessage("Please describe the problem"),
        "pleaseEnterYourName":
            MessageLookupByLibrary.simpleMessage("Please enter your name"),
        "poweredBy": MessageLookupByLibrary.simpleMessage("Powered by"),
        "proceed": MessageLookupByLibrary.simpleMessage("Proceed"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "recent": MessageLookupByLibrary.simpleMessage("Recent"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "requestConfirmationSendSuccessfullyMessage":
            MessageLookupByLibrary.simpleMessage(
                "Your Request has been sent successfully !\nplease Wait for client reply"),
        "requestForConfirmation":
            MessageLookupByLibrary.simpleMessage("Request for confirmation"),
        "requestStoragePermissionFile": MessageLookupByLibrary.simpleMessage(
            "Please allows application to access photos and media on your so that you can upload attachments"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "rescheduled": MessageLookupByLibrary.simpleMessage("Rescheduled"),
        "resetDone":
            MessageLookupByLibrary.simpleMessage("Reset done successfully"),
        "resetNow": MessageLookupByLibrary.simpleMessage("Reset now"),
        "resetPasswordHint": MessageLookupByLibrary.simpleMessage(
            "Enter the email address associated with your account to receive a password reset link."),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "retryAgain": MessageLookupByLibrary.simpleMessage("Retry again"),
        "review": MessageLookupByLibrary.simpleMessage("Review"),
        "running": MessageLookupByLibrary.simpleMessage("Running"),
        "safetyRequirements":
            MessageLookupByLibrary.simpleMessage("Safety requirements"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "schedule": MessageLookupByLibrary.simpleMessage("Schedule"),
        "scheduled": MessageLookupByLibrary.simpleMessage("Scheduled"),
        "searchForEquipment":
            MessageLookupByLibrary.simpleMessage("Search for equipment"),
        "searchForItem": m5,
        "searchForSystem":
            MessageLookupByLibrary.simpleMessage("Search for system"),
        "selectItem": m6,
        "selectLanguage":
            MessageLookupByLibrary.simpleMessage("Select language"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "sequence": MessageLookupByLibrary.simpleMessage("Sequence"),
        "stage": MessageLookupByLibrary.simpleMessage("Stage"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "success": MessageLookupByLibrary.simpleMessage("Success"),
        "system": MessageLookupByLibrary.simpleMessage("System"),
        "systems": MessageLookupByLibrary.simpleMessage("Systems"),
        "systemsCount": m7,
        "systemsSpecify":
            MessageLookupByLibrary.simpleMessage("Systems Specify"),
        "testRequirements":
            MessageLookupByLibrary.simpleMessage("Test requirements"),
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
        "type": MessageLookupByLibrary.simpleMessage("Type"),
        "unKnown": MessageLookupByLibrary.simpleMessage("Un known"),
        "unknownError": MessageLookupByLibrary.simpleMessage("Unknown error"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updatedDone":
            MessageLookupByLibrary.simpleMessage("Update done successfully"),
        "url": MessageLookupByLibrary.simpleMessage("Url"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "validationInvalidPassword":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "validationPasswordPattern": MessageLookupByLibrary.simpleMessage(
            "Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character"),
        "validationRequired":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "version": m8,
        "visit": MessageLookupByLibrary.simpleMessage("Visit"),
        "visitBefore": MessageLookupByLibrary.simpleMessage("Visit before"),
        "visitBeforeNum": m9,
        "visitDetails": MessageLookupByLibrary.simpleMessage("Visit Details"),
        "visitProceed": MessageLookupByLibrary.simpleMessage("Visit Proceed"),
        "visitReportSendSuccessfullyMessage": MessageLookupByLibrary.simpleMessage(
            "Your report has been sent successfully !\nplease Wait for client confirmation"),
        "visitType": m10,
        "visits": MessageLookupByLibrary.simpleMessage("Visits"),
        "wait": MessageLookupByLibrary.simpleMessage("Please Wait ..."),
        "warning": MessageLookupByLibrary.simpleMessage("Warning"),
        "weeksCount": m11,
        "welcome":
            MessageLookupByLibrary.simpleMessage("keep up with good work"),
        "whatsComing": MessageLookupByLibrary.simpleMessage("What’s coming"),
        "whatsappMessage":
            MessageLookupByLibrary.simpleMessage("Whatsapp message"),
        "writeNote": MessageLookupByLibrary.simpleMessage("Write your note"),
        "yearCount": m12,
        "yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
        "yourCompany": MessageLookupByLibrary.simpleMessage("Your Company")
      };
}
