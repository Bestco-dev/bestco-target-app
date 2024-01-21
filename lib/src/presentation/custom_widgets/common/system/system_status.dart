import 'package:flutter/material.dart';

import '../../../../../locales/localization/l10n.dart';

class SystemStatus extends StatelessWidget {
  final Color? labelColor;
  final Color? infoColor;
  final String info;
  const SystemStatus({
    this.labelColor,
    required this.info,
    this.infoColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _status();
  }

  // Widget _status2(){
  //   return ListTile(
  //     leading: Container(
  //       width: 3,
  //       height: 25,
  //       decoration: BoxDecoration(
  //         color: infoColor,
  //       ),
  //     ),
  //     title: Row(
  //       children: [
  //
  //       ],
  //     ),
  //   );
  // }

  Widget _status() {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 3,
          height: 25,
          decoration: BoxDecoration(
            color: infoColor,
          ),
        ),
        const SizedBox(width: 20),
        Text(
         Localization.current.status ,
          style: TextStyle(
            color: labelColor ?? Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                  color: infoColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  info,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
