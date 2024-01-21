import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../domain/entities/equipment/equipment.dart';
import '../../../domain/entities/equipment_history/equipment_history.dart';
import '../../../domain/entities/kpi/kpi.dart';
import '../../custom_widgets/common/buttons/custom_button.dart';
import '../../custom_widgets/common/custom_round_image.dart';
import '../../custom_widgets/common/kpis/kpi_report.dart';
import '../../custom_widgets/common/recordset/empty_recordset.dart';
import '../../custom_widgets/common/recordset/error_recordset.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../custom_widgets/common/status_bar/dark_status_bar.dart';
import '../../view_models/equipments/equipment_history_view_model.dart';

class EquipmentHistoryMobilePage extends ConsumerStatefulWidget {
  final EquipmentModel equipment;
  const EquipmentHistoryMobilePage(this.equipment, {Key? key})
      : super(key: key);
  @override
  ConsumerState<EquipmentHistoryMobilePage> createState() =>
      _EquipmentHistoryMobilePageState();
}

class _EquipmentHistoryMobilePageState
    extends ConsumerState<EquipmentHistoryMobilePage> {
  EquipmentModel get _equipment => widget.equipment;
  int _tabIndex = 0;
  // @override
  // void initState() {
  //   Future.microtask(
  //     () => ref
  //         .read(equipmentHistoryViewModelProvider(_equipment.id).notifier)
  //         .load(),
  //   );
  //   super.initState();
  // }

  void _load() {
    ref.read(equipmentHistoryViewModelProvider(_equipment.id).notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    // List<EquipmentHistoryModel> history = getEquipmentHistory(length: 4);
    final state = ref.watch(equipmentHistoryViewModelProvider(_equipment.id));
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.current.history),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          empty: () => RecordSetEmptyWidget(
            message: Localization.current.noHistoryFound,
            buttonText: Localization.current.refresh,
            onAction: _load,
          ),
          error: (err) => RecordSetErrorWidget(
            onRetry: _load,
            errorMessage: err.message,
            retryText: Localization.of(context).retry,
          ),
          loading: () => const _Placeholder(),
          data: (history) => Column(
            children: [
              _titleName(),
              const SizedBox(height: 12),
              _tabsButtons(history),
              const SizedBox(height: 15),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async => _load(),
                  child: ListView(
                    children: [
                      _kpiHistories(history[_tabIndex].kpis),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _kpiHistories(List<KpiModel> kpis) {
    kpis = [...kpis, ...kpis];
    return Column(
      children: [
        ...List.generate(
            kpis.length, (index) => KpiReport(kpiModel: kpis[index]))
      ],
    );
  }

  Widget _tabsButtons(List<EquipmentHistoryModel> history) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // mainAxisAlignment: MainAxixsAlignment.spaceBetween,
        children: [
          ...List.generate(
            history.length,
            (index) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  label: index <= 2
                      ? _getTabTitle(index)
                      : history[index].date.displayDate,
                  borderColor: Colors.black38,
                  onPress: () {
                    setState(() {
                      _tabIndex = index;
                    });
                  },
                  isPlane: index != _tabIndex,
                  hPadding: 10,
                ),
                // AppBtn(
                //   onPressed: () {
                //     setState(() {
                //       _tabIndex = index;
                //     });
                //   },
                //   isPlane: index != _tabIndex,
                //   borderColor: ResColors.primary,
                //   backgroundColor: ResColors.primary,
                //   text: index <= 2
                //       ? _getTabTitle(index)
                //       : history[index].date.displayDate,
                // ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getTabTitle(int index) {
    try {
      return [
        Localization.current.visitBefore,
        Localization.current.visitBeforeNum(1),
        Localization.current.visitBeforeNum(2)
      ][index];
    } catch (_) {
      return Localization.current.history;
    }
  }

  Widget _titleName() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 4,
      leading: CustomRoundImage(
        url: _equipment.image,
        size: 35,
        borderColor: Colors.blue,
        borderWidth: 2,
      ),
      title: Text(
        _equipment.name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: DarkStatusBar(
        child: Column(
          children: [
            // ResVerticalGap.gap08,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Skeleton(width: 100, height: 50),
                Skeleton(width: 100, height: 50),
                Skeleton(width: 100, height: 50),
              ],
            ),
            ResVerticalGap.gap05,
            Skeleton(width: double.infinity, height: 80),
            ResVerticalGap.gap03,
            Skeleton(width: double.infinity, height: 80),
            ResVerticalGap.gap03,
            Skeleton(width: double.infinity, height: 80),
            ResVerticalGap.gap03,
            Skeleton(width: double.infinity, height: 80),
          ],
        ),
      ),
    );
  }
}
