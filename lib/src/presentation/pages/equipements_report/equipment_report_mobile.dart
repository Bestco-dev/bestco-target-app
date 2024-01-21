import 'package:flutter/material.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/types/types.dart';
import '../../../domain/entities/attachment/attachment.dart';
import '../../../domain/entities/equipment/equipment.dart';
import '../../../domain/entities/kpi/kpi.dart';
import '../../../domain/entities/system/system.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/custom_round_image.dart';
import '../../custom_widgets/common/equipment/history_icon.dart';
import '../../custom_widgets/common/kpis/attachment_view.dart';
import '../../custom_widgets/common/kpis/kpi_report.dart';
import '../../custom_widgets/common/system/custom_sys_icon.dart';
import '../../custom_widgets/common/system/system_status.dart';

class EquipmentReportMobilePage extends StatefulWidget {
  final SystemModel systemModel;
  const EquipmentReportMobilePage(this.systemModel, {Key? key})
      : super(key: key);
  @override
  State<EquipmentReportMobilePage> createState() =>
      _EquipmentReportMobilePageState();
}

class _EquipmentReportMobilePageState extends State<EquipmentReportMobilePage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    final SystemModel system = widget.systemModel;
    return Scaffold(
      appBar: AppBar(
        title:  Text(Localization.current.equipmentsReport),
      ),
      body: CustomBackgroundWidget(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            children: [
              SystemStatus(
                info: system.failureType?.translate??Localization.current.unKnown,
                infoColor: system.failureType?.color,
              ),
              ResVerticalGap.gap05,
              CustomCard(
                radius: 100,
                vp: 0,
                hp: 0,
                child: ListTile(
                  // horizontalTitleGap: 0,
                  leading: CustomSysIcon(
                      icon: Icons.calendar_month, border: Colors.blue[800]),
                  title: Text("${Localization.current.lastCheck} - ${system.lastCheckUp.display}"),
                  // trailing: Text(_system.lastCheckUp.display),
                ),
              ),
              ResVerticalGap.gap05,
              CustomCard(
                radius: 100,
                vp: 0,
                hp: 0,
                child: ListTile(
                  // horizontalTitleGap: 0,
                  leading: const CustomSysIcon(
                      icon: Icons.settings, border: Colors.green),
                  title: Text(system.name),
                  // trailing: Text("20-02-2022"),
                ),
              ),
              ResVerticalGap.gap05,
              _equipments(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _equipments() {
    final equipments = [
      EquipmentModel(
        id: -1,
        name: Localization.current.genericKpis,
        kpis: widget.systemModel.genericKpis,
        isGeneric: true,
      ),
      ...widget.systemModel.equipments,
    ];
    return Column(
      children: [
        ListTile(
          // horizontalTitleGap: 0,
          contentPadding: EdgeInsets.zero,
          leading: const CustomSysIcon(
            icon: Icons.settings_input_svideo_rounded,
            border: Colors.white,
          ),
          title:  Text(
            "${Localization.current.genericKpis} & ${Localization.current.equipmentsReport}",
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ...List.generate(
          equipments.length,
          (index) {
            final equipment = equipments[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: CustomCard(
                    vp: 8,
                    radius: 20,
                    // background: Colors.blue,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            setState(
                              () {
                                if (selectedIndex == index) {
                                  selectedIndex = -1;
                                  return;
                                }
                                selectedIndex = index;
                              },
                            );
                          },
                          horizontalTitleGap: 0,
                          minVerticalPadding: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: !equipment.isGeneric
                              ? CustomRoundImage(
                                  url: equipment.image,
                                  size: 35,
                                  borderColor: Colors.blue,
                                )
                              : null,
                          title: Container(
                            margin: !equipment.isGeneric
                                ? const EdgeInsets.only(top: 18)
                                : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    equipment.name,
                                    maxLines: index != selectedIndex ? 1 : null,
                                    overflow: index != selectedIndex
                                        ? TextOverflow.ellipsis
                                        : null,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 8),
                                    RotatedBox(
                                      quarterTurns:
                                          index == selectedIndex ? 5 : 3,
                                      child: Icon(
                                        color: index == selectedIndex
                                            ? ResColors.primary
                                            : Colors.grey,
                                        Icons.arrow_back_ios_new_outlined,
                                        size: 20,
                                        // color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          subtitle: (!equipment.isGeneric)
                              ? Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      EquipmentHistoryIcon(
                                        equipment: equipment,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            // color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.history,
                                              size: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        // margin: EdgeInsets.only(top: 1),
                                        decoration: BoxDecoration(
                                          color:
                                              equipments[index].failures?.color,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child:
                                              equipments[index].failures != null
                                                  ? Icon(
                                                      equipments[index]
                                                          .failures
                                                          ?.icon,
                                                      size: 18,
                                                      color: Colors.white,
                                                    )
                                                  : const SizedBox(),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                        ),
                        index != selectedIndex
                            ? const SizedBox()
                            : _kpis(equipment.attachments, equipment.kpis),
                        // const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                // if(index != selectedIndex)SizedBox(height: 10),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _kpis(List<AttachmentModel> attachments, List<KpiModel> kpis) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          kpis.length,
          (index) => KpiReport(
            kpiModel: kpis[index],
          ),
        ),
        if (attachments.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: AttachmentView(
              size: 80,
              networkImagesSources: List.generate(
                attachments.length,
                (index) => attachments[index].url,
              ),
            ),
          ),
      ],
    );
  }
}
