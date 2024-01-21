import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'device_info.dart';

/// Wrappers crash analytics service
///
/// An error object represent instance of [Error] or [Exception] classes.
/// main functionality of class is to submit `error` to crash analytic service.
class CrashlyticsService {
  CrashlyticsService._internal();

  /// Creates instance of class
  static final CrashlyticsService _instance = CrashlyticsService._internal();

  /// Provides instance of class
  static CrashlyticsService get instance => _instance;

  /// Submits [err] to crash analytics service
  ///
  /// [err] is instance of [Error] or [Exception] classes.
  /// [stack] represents information about call sequence that triggered the [err].
  void report(dynamic error, StackTrace stack) {
    // Use firebase crash analytic to report errors
    FirebaseCrashlytics.instance.recordError(error, stack);
  }

  Future<void> setCustomCrashParams() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoService.instance.deviceInfo;
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      FirebaseCrashlytics.instance.setCustomKey('id', androidDeviceInfo.id);
      FirebaseCrashlytics.instance
          .setCustomKey('board', androidDeviceInfo.board);
      FirebaseCrashlytics.instance
          .setCustomKey('bootloader', androidDeviceInfo.bootloader);
      FirebaseCrashlytics.instance
          .setCustomKey('brand', androidDeviceInfo.brand);
      FirebaseCrashlytics.instance
          .setCustomKey('device', androidDeviceInfo.device);
      FirebaseCrashlytics.instance
          .setCustomKey('display', androidDeviceInfo.display);
      FirebaseCrashlytics.instance
          .setCustomKey('fingerprint', androidDeviceInfo.fingerprint);
      FirebaseCrashlytics.instance
          .setCustomKey('hardware', androidDeviceInfo.hardware);
      FirebaseCrashlytics.instance.setCustomKey('host', androidDeviceInfo.host);
      FirebaseCrashlytics.instance
          .setCustomKey('isPhysicalDevice', androidDeviceInfo.isPhysicalDevice);
      FirebaseCrashlytics.instance
          .setCustomKey('manufacturer', androidDeviceInfo.manufacturer);
      FirebaseCrashlytics.instance
          .setCustomKey('model', androidDeviceInfo.model);
      FirebaseCrashlytics.instance
          .setCustomKey('product', androidDeviceInfo.product);
      FirebaseCrashlytics.instance.setCustomKey('tags', androidDeviceInfo.tags);
      FirebaseCrashlytics.instance.setCustomKey('type', androidDeviceInfo.type);
      FirebaseCrashlytics.instance.setCustomKey(
          'versionBaseOs', androidDeviceInfo.version.baseOS ?? '');
      FirebaseCrashlytics.instance
          .setCustomKey('versionCodename', androidDeviceInfo.version.codename);
      FirebaseCrashlytics.instance.setCustomKey(
          'versionIncremental', androidDeviceInfo.version.incremental);
      FirebaseCrashlytics.instance.setCustomKey(
          'versionPreviewSdk', androidDeviceInfo.version.previewSdkInt ?? '');
      FirebaseCrashlytics.instance
          .setCustomKey('versionRelease', androidDeviceInfo.version.release);
      FirebaseCrashlytics.instance
          .setCustomKey('versionSdk', androidDeviceInfo.version.sdkInt);
      FirebaseCrashlytics.instance.setCustomKey('versionSecurityPatch',
          androidDeviceInfo.version.securityPatch ?? '');
    }
    else {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      FirebaseCrashlytics.instance.setCustomKey('model', iosInfo.model);
      FirebaseCrashlytics.instance
          .setCustomKey('isPhysicalDevice', iosInfo.isPhysicalDevice);
      FirebaseCrashlytics.instance.setCustomKey('name', iosInfo.name);
      FirebaseCrashlytics.instance.setCustomKey(
          'identifierForVendor', iosInfo.identifierForVendor ?? '');
      FirebaseCrashlytics.instance
          .setCustomKey('localizedModel', iosInfo.localizedModel);
      FirebaseCrashlytics.instance
          .setCustomKey('systemName', iosInfo.systemName);
      FirebaseCrashlytics.instance
          .setCustomKey('utsnameVersion', iosInfo.utsname.version);
      FirebaseCrashlytics.instance
          .setCustomKey('utsnameRelease', iosInfo.utsname.release);
      FirebaseCrashlytics.instance
          .setCustomKey('utsnameMachine', iosInfo.utsname.machine);
      FirebaseCrashlytics.instance
          .setCustomKey('utsnameNodename', iosInfo.utsname.nodename);
      FirebaseCrashlytics.instance
          .setCustomKey('utsnameSysname', iosInfo.utsname.sysname);
    }
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    FirebaseCrashlytics.instance.setCustomKey('version', packageInfo.version);
    FirebaseCrashlytics.instance.setCustomKey('appName', packageInfo.appName);
    FirebaseCrashlytics.instance
        .setCustomKey('buildNumber', packageInfo.buildNumber);
    FirebaseCrashlytics.instance
        .setCustomKey('packageName', packageInfo.packageName);
  }
}
