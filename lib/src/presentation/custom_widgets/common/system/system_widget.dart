import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../locales/localization/l10n.dart';
import '../../../../common/utils/extensions/datetime.dart';
import '../../../../data/types/types.dart';
import '../../../../domain/entities/system/system.dart';
import '../../../pages/equipements_report/equipment_report.dart';
import '../card.dart';

class SystemWidget extends StatelessWidget {
  final SystemModel system;
  const SystemWidget({super.key,required this.system});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      // background: C,
      radius: 20,
      vp: 0,

      // hp: 0,
      // child: CustomerWidget(customer: customer),
      child: ListTile(
        onTap: () => context.pushNamed(
          EquipmentReport.pageName,
          extra: system,
          // pathParameters: {"system": system},
        ),

        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        title: Row(
          children: [
            Expanded(
              child: Text(system.name),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              // margin: EdgeInsets.only(top: 1),
              decoration: BoxDecoration(
                color: system.failureType?.color,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  system.failureType?.icon ?? Icons.check,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        // title: Text(system.name*2),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                "${Localization.current.lastCheck} ${system.lastCheckUp.displayDate}"),
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
      ),
    );
  }
}
