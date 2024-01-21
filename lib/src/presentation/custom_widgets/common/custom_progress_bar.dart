import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter/material.dart';

import '../../../common/res/router.dart';
import '../../../common/utils/extensions/context.dart';
import 'cicular_loading.dart';

class ProgressBar {
  // static final ProgressBar _singleton = ProgressBar._internal();
  // static BuildContext? _context = NavigationService.context;
  static bool isDisplayed = false;
  static show({String? text}) {
    isDisplayed = true;

    BuildContext? context = NavigationService.context;
    if (context == null) return;
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            hide();
            return false;
          },
          child: GestureDetector(
            onTap: () => hide(),
            child: SimpleDialog(
              backgroundColor: Colors.white,
              children: [
                Container(
                  child: context.isPhone ? _phone(text) : _tablet(text),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Widget _phone(String? text) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            const Padding(
              padding: EdgeInsets.all(0),
              // padding: const EdgeInsets.only(
              //     left: 16, top: 16, right: 16),
              child: AppCircularLoading(size: 30),
            ),
            const SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                text ?? Localization.current.wait,
                style: const TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget _tablet(String? text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 30),
          const Padding(
            padding: EdgeInsets.all(0),
            // padding: const EdgeInsets.only(
            //     left: 16, top: 16, right: 16),
            child: AppCircularLoading(
              size: 60,
              width: 10,
            ),
          ),
          const SizedBox(width: 40),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              text ?? Localization.current.wait,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }

  static hide() {
    BuildContext? context = NavigationService.context;
    if (context == null) return;
    if (isDisplayed) {
      isDisplayed = false;
      Navigator.of(context).pop();
    }
  }
}
