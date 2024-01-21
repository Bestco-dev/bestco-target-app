import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/system/system.dart';
import '../../pages/check/check.dart';

class SystemItem extends StatelessWidget {
  final bool selected;
  final VoidCallback onPressed;
  final SystemModel system;

  const SystemItem(
      {Key? key,
      required this.selected,
      required this.onPressed,
      required this.system})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = selected ? Colors.amber : Colors.blueGrey;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 130,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? Colors.amber.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.shade300),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        system.name,
                        style: textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    ResVerticalGap.gap05,
                    if (selected) Icon(Icons.check_circle_outline, color: color)
                  ],
                ),
                ResVerticalGap.gap03,
                const Text("More info"),
              ],
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 36,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: selected ? color : Colors.white,
                          side: BorderSide(color: color)),
                      onPressed: () {
                        context.pushNamed(CheckPage.pageName,
                            pathParameters: {'id': "1"});
                      },
                      child: Text(Localization.of(context).proceed,
                          style: context.textTheme.labelLarge?.copyWith(
                              color:
                                  color.isDark && selected ? Colors.white : Colors.black))),
                )),
          ],
        ),
      ),
    );
  }
}
