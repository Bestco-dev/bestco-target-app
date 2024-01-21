import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../common/res/colors.dart';
import '../../../../common/utils/extensions/context.dart';

class AppBtn extends StatelessWidget {
  final String text;
  final bool isPlane;
  final bool isLoading;
  final Function()? onPressed;
  final double? height;
  final double? fontSize;
  final double? circularRadius;
  final Color backgroundColor;
  final Color textColor;
  final Color? borderColor;

  final IconData? icon;
  const AppBtn(
      {required this.text,
      this.isPlane = false,
      this.onPressed,
      this.backgroundColor = Colors.green,
      this.textColor = Colors.black,
      this.borderColor,
      this.isLoading = false,
      this.icon,
      this.height,
      this.fontSize,
      this.circularRadius,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return isPlane
        ? SizedBox(
            height: height ?? (context.isPhone ? 45 : 80),
            child: OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(circularRadius ?? 20),
                ),
                side: BorderSide(
                    width: 1.0, color: borderColor ?? ResColors.primary),
                // shape: MaterialStateProperty.all(
                //   RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(
                //         circularRadius ?? (context.isPhone ? 10 : 10)),
                //   ),
                // ),
              ),
              child: Center(
                // padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize ?? (context.isPhone ? 16 : 30),
                      color: textColor,
                    ),
                  ),
                ),
              ),
            ),
          )
        : SizedBox(
            height: height ?? (context.isPhone ? 45 : 80),
            child: ElevatedButton(
              // ,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      circularRadius ?? (context.isPhone ? 20 : 20),
                    ),
                    // side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              onPressed: onPressed,
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   // mainAxisSize: MainAxisSize.min,
              //   children: [
              //     Icon(icon, color: Colors.white),
              //     const SizedBox(width: 10),
              //     Text(
              //       text,
              //       style: TextStyle(
              //         fontSize: fontSize ?? (context.isPhone ? 16 : 30),
              //         color:
              //             backgroundColor.isDark ? Colors.white : Colors.black,
              //       ),
              //     ),
              //   ],
              // ),
              // ,
              child: Center(
                // padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize ?? (context.isPhone ? 16 : 30),
                      color:
                          backgroundColor.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
  }

  Widget _child() {
    return Container(
      child: isLoading
          ? SpinKitDualRing(
              color: isPlane ? backgroundColor : Colors.white,
              size: 30.0,
              lineWidth: 4,
            )
          : Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  color: isPlane
                      ? backgroundColor
                      : backgroundColor == Colors.white
                          ? ResColors.primary
                          : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
              ),
            ),
    );
  }
}
