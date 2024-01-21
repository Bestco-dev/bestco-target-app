import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timelines/timelines.dart';

import '../../../../common/res/colors.dart';
import '../../../../common/res/constants.dart';
import '../../../../data/types/types.dart';
import '../../../../domain/entities/key_value/key_value.dart';
import '../../../../domain/entities/kpi/kpi.dart';
import '../../../view_models/visits/proceed/kpi_view_model.dart';
import '../custom_checkbox.dart';
import '../custom_dialogs_bar.dart';
import 'kpi_usage.dart';

class KpiQuestion extends ConsumerWidget {
  final KpiModel kpiModel;
  const KpiQuestion({required this.kpiModel, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kpiWatch = ref.watch(kipProvider(kpiModel).notifier);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TimelineTheme(
        data: TimelineThemeData(
          connectorTheme: ConnectorThemeData(
            color: kpiWatch.isAnswered() ? Colors.green : Colors.blueGrey,
            indent: 10,
            thickness: 2,
          ),
        ),
        child: TimelineTile(
          nodeAlign: TimelineNodeAlign.start,
          contents: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        kpiModel.name,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    if (kpiModel.hasHowToUse)
                      GestureDetector(
                        onTap: () => AppCustomDialogs.alertDialog(
                          child: kpiModel.usage != null
                              // ? CustomPdfViewer(pdfLink: 'pdfLink')
                              ? KpiUsage(usage: kpiModel.usage!)
                              : const SizedBox(),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                border:
                                    Border.all(width: 2, color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.question_mark_outlined,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              // const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16),
                // child: _editNumberQuestion(),
                child: _question(ref),
              ),
            ],
          ),
          // node: Icon(Icons.add),
          node: TimelineNode(
            position: 100,
            // indicatorPosition: .1,
            indicator: DotIndicator(
              position: .02,
              color: kpiWatch.isAnswered() ? Colors.green : Colors.blueGrey,
              size: 25,
              child: kpiWatch.isAnswered()
                  ? const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    )
                  : null,
            ),
            startConnector: const SizedBox(),
            endConnector: const SolidLineConnector(),
          ),
        ),
      ),
    );
  }

  Widget _question(WidgetRef ref) {
    switch (kpiModel.measuermentType) {
      case KpiMeasuermentType.number:
        return _editNumberQuestion(ref);
      case KpiMeasuermentType.singleChoice:
        return _singleChoiceQuestion(ref);
      case KpiMeasuermentType.numberCounter:
        return _counterQuestion(ref);
    }
  }

  Widget _editNumberQuestion(WidgetRef ref) {
    final kpiWatch = ref.watch(kipProvider(kpiModel));
    final kpiRead = ref.watch(kipProvider(kpiModel).notifier);
    List<KpiOptionModel> options = kpiWatch.options;
    return Column(
      children: [
        ...List.generate(options.length, (index) {
          KpiOptionModel option = options[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: kpiRead.controllers[index],
                        onChanged: (value) => kpiRead.updateOptionValueAnswer(
                            kpiRead.controllers[index],
                            option: option,
                            value: value),
                        decoration: InputDecoration(
                          hintText: option.label,
                          labelText: option.label,
                          suffixIcon: option.unit == null
                              ? null
                              : Container(
                                  // height: 55,
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                  // width: 100,
                                  constraints: const BoxConstraints(
                                    minHeight: 54,
                                    minWidth: 50,
                                    maxWidth: 150,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff676769),
                                    // color: Color(0xb6c04a4a),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "${option.unit ?? ''}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: AppCustomCheckBox(
                        isChecked: option.value == null,
                        isRadio: false,
                        label: Localization.current.notApplicable,
                        onPress: () {
                          kpiRead.checkNotApplicableNumber(
                              kpiRead.controllers[index], option);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
        // ...kpiWatch.options.map(
        //   (option) {
        //     return
        //   },
        // ),
      ],
    );
  }

  Widget _counterQuestion(WidgetRef ref) {
    final kpiWatch = ref.watch(kipProvider(kpiModel));
    final kpiRead = ref.read(kipProvider(kpiModel).notifier);

    List<KpiOptionModel> options = kpiWatch.options;
    return Column(
      children: [
        ...List.generate(options.length, (index) {
          final option = options[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: (option.key != ResConstants.notApplicableKey)
                ? Row(
                    children: [
                      Expanded(
                        child: Text(
                          option.label,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      _counters(kpiRead.controllers[index], ref, option),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: AppCustomCheckBox(
                          isChecked: option.value != null,
                          label: option.label,
                          color: Colors.blue[800],
                          onPress: () {
                            kpiRead.toggleOption(option);
                          },
                        ),
                      ),
                    ],
                  ),
          );
        }),
      ],
    );
  }

  Widget _counters(
      TextEditingController con, WidgetRef ref, KpiOptionModel option) {
    final kpiWatch = ref.watch(kipProvider(kpiModel).notifier);
    final kpiRead = ref.read(kipProvider(kpiModel).notifier);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            heroTag: "remove${kpiModel.name}",
            backgroundColor: Colors.white,
            focusColor: Colors.transparent,
            hoverElevation: 0,
            splashColor: Colors.white.withOpacity(0.25),
            child: const Icon(
              Icons.remove,
              color: ResColors.checkBoxBorder,
            ),
            onPressed: () {
              kpiRead.decreaseNumberCounterAnswer(con, option: option);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                option.value ?? '',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 40,
                height: 1,
                color: Colors.black,
              )
            ],
          ),
        ),
        SizedBox(
          width: 30,
          height: 30,
          child: FloatingActionButton(
            heroTag: "add${kpiModel.name}",
            backgroundColor: Colors.white,
            focusColor: Colors.transparent,
            hoverElevation: 0,
            splashColor: Colors.white.withOpacity(0.25),
            // foregroundColor: Colors.transparent,
            child: const Icon(
              Icons.add,
              color: ResColors.checkBoxBorder,
            ),
            onPressed: () {
              kpiRead.increaseNumberCounterAnswer(con, option: option);
            },
          ),
        ),
      ],
    );
  }

  Widget _singleChoiceQuestion(WidgetRef ref) {
    final kpiWatch = ref.watch(kipProvider(kpiModel));
    final kpiRead = ref.read(kipProvider(kpiModel).notifier);
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      runSpacing: 20,
      spacing: 40,
      children: [
        ...kpiWatch.options.map(
          (e) => AppCustomCheckBox(
            isChecked: e.value != null,
            label: e.label,
            onPress: () => kpiRead.toggleOption(e),
          ),
        ),
      ],
    );
  }
}
