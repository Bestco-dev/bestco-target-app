import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../../common/res/spacing.dart';


class LanguageTile extends StatelessWidget {
  final String title;
  final String value;
  final Function(String) onSelected;
  final bool selected;
  const LanguageTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onSelected,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: value == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => onSelected(value),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
              horizontal: ResSpacing.spacing04,
              vertical: ResSpacing.spacing05),
          child: Row(
            children: [
              Text(title, style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 32, width: 1),
              if (selected) ...[
                const Spacer(),
                const Icon(
                  Icons.check_circle_outline,
                  color: ResColors.primary,
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
