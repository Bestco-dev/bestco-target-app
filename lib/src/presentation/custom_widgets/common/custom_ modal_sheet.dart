import 'package:flutter/material.dart';

import '../../../common/utils/extensions/context.dart';

class CustomModalSheet extends StatelessWidget {
  final Widget? child;
  final String? title;
  final bool hasMarginBottom;
  const CustomModalSheet(
      {super.key, this.child, this.title, this.hasMarginBottom = true});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: hasMarginBottom ? 10 : 0),
          // height: 100,
          color: Colors.white,
          child: ListTile(
            title: Text(
              title ?? '',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.clear, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        Expanded(
          child: child ?? const SizedBox(),
        ),
      ],
    );
  }

  static showModalSheet(BuildContext context,
      {double? height,
      String? title,
      Widget? child,
      bool hasMarginBottom = true}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // backgroundColor:  Colors.red,
      backgroundColor: const Color(0xfff7f7f7),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (_) {
        return SafeArea(
          child: SizedBox(
            height: height,
            child: CustomModalSheet(
              title: title,
              hasMarginBottom: hasMarginBottom,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
