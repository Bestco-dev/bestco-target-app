import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';


/// Device info service.
class DeviceInfoService {
  final deviceInfo = DeviceInfoPlugin();

  DeviceInfoService._();

  /// Creates instance of class
  static final DeviceInfoService _instance = DeviceInfoService._();

  /// Provides instance of class
  static DeviceInfoService get instance => _instance;

  /// Retrieves device id.
  Future<String?> getId() async {
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // unique ID on Android
    }
    return null;
  }

  /// Retrieves platform.
  Future<String> getPlatform() async => Platform.operatingSystem;


}
