import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

class ResLauncher {
  ResLauncher._();

  static final ResLauncher _singleton = ResLauncher._internal();
  static final ResLauncher instance = _singleton;

  factory ResLauncher() {
    return _singleton;
  }

  ResLauncher._internal();

  openPhone(String phone) async {
    final url = Uri.parse("tel:$phone");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not open phone number.';
    }
  }

  openLink(String link) async {
    print("link is $link");
    final url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not open phone number.';
    }
  }

  openMap(double latitude, double longitude) async {
    final Uri url;

    if (Platform.isIOS) {
      url = Uri.parse(
          'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');
    } else {
      url = Uri.parse("geo:$latitude,$longitude");
    }
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not open the map.';
    }
  }

  openWhatsApp(String phone) async {
    final Uri url = Uri.parse("whatsapp://send?phone=$phone"); //
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not open the whatsapp.';
    }
  }
}
