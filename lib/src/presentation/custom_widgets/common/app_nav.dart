import 'package:flutter/material.dart';
// import 'package:get/get.dart';

appNavPushReplacement(BuildContext context, {required Widget page}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

appNavPush(BuildContext context, {required Widget page}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
//
// appNavBck() {
//   Navigator.pop(Get.context!);
// }
