import 'package:flutter/material.dart';

import 'card.dart';

class CustomInfoItem extends StatelessWidget {
  final String title;
  final String? info;
  final bool isBold;
  const CustomInfoItem(
      {super.key, required this.title, this.isBold = false, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: CustomCard(
        vp: 1,
        // vm: 10,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF555B6A),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Text(
            info??'',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF555B6A),
              fontSize: 13,
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomInfoIWidgetItem extends StatelessWidget {
  final String title;
  final Widget? info;
  final bool isBold;
  const CustomInfoIWidgetItem(
      {super.key, required this.title, this.isBold = false, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: CustomCard(
        vp: 1,
        // vm: 10,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF555B6A),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: info,
        ),
      ),
    );
  }
}
