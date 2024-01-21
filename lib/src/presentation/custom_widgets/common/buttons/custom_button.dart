import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color background;
  final Color? borderColor;
  final Function()? onPress;
  final bool isPlane;
  final double? hPadding;

  const CustomButton({
    super.key,
    required this.label,
    this.onPress,
    this.isPlane = false,
    this.borderColor,
    this.hPadding,
    this.background = const Color(0xFF6898D1),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // width: 91.74,
        padding: EdgeInsets.symmetric(horizontal: hPadding ?? 4, vertical: 4),
        height: 40,
        decoration: ShapeDecoration(
          color: isPlane ? Colors.white : background,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.50,
              color: borderColor ?? const Color(0xFF192B6B),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x59000000),
              blurRadius: 15,
              offset: Offset(0, 8),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: isPlane
                  ? Colors.black
                  : (background.isDark)
                      ? Colors.white
                      : const Color(0xff3F3F3F),
            ),
          ),
        ),
      ),
    );
  }
}
