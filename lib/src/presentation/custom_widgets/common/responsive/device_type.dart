part of 'responsive.dart';

enum DeviceType { mobile, tablet, desktop, watch, fold }

class Breakpoints {
  static const double mobile = 200;
  static const double fold = 480;
  static const double tablet = 680;
  static const double desktop = 900;
}

DeviceType getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  try {
    if (orientation == Orientation.landscape) {
      if (Platform.isAndroid || Platform.isIOS) {
        width = mediaQueryData.size.height;
      }
    } else {
      width = mediaQueryData.size.width;
    }
  } catch (error) {
    width = mediaQueryData.size.width;
  }

  if (width >= Breakpoints.desktop) {
    return DeviceType.desktop;
  }
  if (width > Breakpoints.tablet && width < Breakpoints.desktop) {
    return DeviceType.tablet;
  }
  if (width > Breakpoints.mobile && width < Breakpoints.tablet) {
    return DeviceType.mobile;
  }


  return DeviceType.watch;
}
