import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';

class AppCustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final bool isRadio;
  final Function()? onPress;
  final Color? color;
  final String? label;
  final double? size;
  const AppCustomCheckBox({
    Key? key,
    this.isChecked = false,
    this.isRadio = true,
    this.color,
    this.onPress,
    this.label,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 25,
              height: 25,
              // padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(8),
                shape: isRadio ? BoxShape.circle : BoxShape.rectangle,
                color: Colors.grey[300],
                border: Border.all(
                    width: 1, //
                    color: !isChecked
                        ? const Color(0xff828282)
                        : color ??
                            ResColors
                                .checkBoxBorder //              <--- border width here
                    ),
              ),
              child: isChecked
                  ? isRadio
                      ? Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color ?? ResColors.checkBoxBorder),
                        )
                      : Center(
                          child: Icon(
                            Icons.check,
                            color: color ?? ResColors.checkBoxBorder,
                          ),
                        )
                  : const SizedBox(),
            ),
            if (label != null) const SizedBox(width: 12),
            if (label != null)
              Text(
                label ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  letterSpacing: 0.36,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
