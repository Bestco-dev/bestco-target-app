import 'package:flutter/material.dart';

class CustomSysIcon extends StatelessWidget {
  final IconData icon;
  final Color? border;
  final double? padding;
  const CustomSysIcon({required this.icon,this.padding,this.border, super.key});

  @override
  Widget build(BuildContext context) {
    return _customIcon();
  }

  Widget _customIcon() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: border ?? Colors.grey,
            width: 2,
          )),
      padding:  EdgeInsets.all(padding??6),
      child: Icon(
        icon,
        color: border,
      ),
    );
  }
}
