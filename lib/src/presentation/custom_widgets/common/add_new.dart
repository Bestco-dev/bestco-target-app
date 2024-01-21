import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';

class AddNewBtn extends StatelessWidget {
  final String? label;
  final Function()? onPress;
  const AddNewBtn({Key? key, this.label, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          // Image.asset(Assets.pngsPlus,width: 30,height: 30,),
          Container(
            width: context.isPhone ? 20 : 35,
            height: context.isPhone ? 20 : 35,
            decoration: BoxDecoration(
                border: Border.all(
                  color: ResColors.btnGreen,
                  width: context.isPhone ? 1.5 : 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Center(
              child: Icon(
                Icons.add,
                color: ResColors.btnGreen,
                size: context.isPhone ? 15 : 25,
              ),
            ),
          ),
          if (label != null) const SizedBox(width: 8),
          Expanded(
            child: Text(
              label ?? '',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xff5c5c5c),
                fontSize: context.isPhone ? 16 : 22,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
