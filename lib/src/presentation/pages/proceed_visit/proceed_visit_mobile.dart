import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timelines/timelines.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/equipment/equipment.dart';
import '../../../domain/entities/system/system.dart';
import '../../../domain/entities/visit/visit.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/custom_round_image.dart';
import '../../custom_widgets/common/equipment/history_icon.dart';
import '../../custom_widgets/common/kpis/attachment_view.dart';
import '../../custom_widgets/common/kpis/kpi_attachment.dart';
import '../../custom_widgets/common/kpis/kpi_question.dart';
import '../../custom_widgets/common/kpis/kpi_report.dart';
import '../../view_models/visits/proceed/equipment_view_model.dart';
import '../../view_models/visits/proceed/kpi_view_model.dart';
import '../../view_models/visits/proceed/visit_proceed_view_model.dart';

class ProceedVisitMobilePage extends ConsumerStatefulWidget {
  final VisitModel visitModel;
  const ProceedVisitMobilePage(this.visitModel, {Key? key}) : super(key: key);

  @override
  ConsumerState<ProceedVisitMobilePage> createState() =>
      _ProceedVisitMobilePageState();
}

class _ProceedVisitMobilePageState
    extends ConsumerState<ProceedVisitMobilePage> {
  int _selectedSystemIndex = 0;
  int _selectedIEquIndex = -1;
  int _currentTopStep = 0;
  SystemModel get _currentSystem => ref
      .read(visitProceedProvider(widget.visitModel).notifier)
      .systems[_selectedSystemIndex];

  @override
  Widget build(BuildContext context) {
    // ref.listen(
    //   visitProceedProvider(widget.visitModel),
    //   (previous, next) {
    //     next.maybeWhen(orElse: (){
    //       ProgressBar.hide();
    //       print("hide ...");
    //     },loading: (){
    //       ProgressBar.show(context);
    //       print("loading ....");
    //     });
    //   },
    // );
    return Scaffold(
      appBar: AppBar(
        title:  Text(Localization.current.visitProceed),
      ),
      // backgroundColor: ResColors.background,CustomBackgroundWidget
      body: CustomBackgroundWidget(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              // color: Colors.yellow,
              child: Center(child: _topStepper()),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                // color: Colors.blue,
                child: Column(
                  children: [
                    if (_currentTopStep == 0) _genericKpis(),
                    if (_currentTopStep == 1) _systemsEquipmentsKpiQuestions(),
                    if (_currentTopStep == 2) _systemsKpiReport(),
                    if (_currentTopStep == 3 || _currentTopStep == 4) _note(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topStepper() {
    return EasyStepper(
      direction: Axis.horizontal,
      activeStep: _currentTopStep,
      lineLength: 20,
      lineThickness: 2,
      lineType: LineType.normal,
      internalPadding: 5,
      defaultLineColor: Colors.green[200],
      finishedLineColor: Colors.green,
      activeStepBackgroundColor: Colors.white,
      finishedStepBackgroundColor: Colors.green,
      unreachedStepBackgroundColor: Colors.grey[400],
      borderThickness: 4,
      activeStepBorderColor: Colors.red,
      showLoadingAnimation: false,
      defaultStepBorderType: BorderType.normal,
      stepRadius: context.width * .07,
      steps: [
        ...List.generate(
          4,
          (index) => EasyStep(
            customStep: Container(
              child: _currentTopStep > index
                  ? const Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : Center(
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
            ),
          ),
        ),
      ],
      onStepReached: (index) => setState(() => _currentTopStep = index),
    );
  }

  Widget _stage({required int number, required String name}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _currentSystem.name,
            // textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]),
          ),
          const SizedBox(height: 20),
          Row(
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                height: 40,
                width: 4,
                color: Colors.green,
              ),
              const SizedBox(width: 10),
              Text(
                "${Localization.current.stage} $number :  ",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showSuccessConfirmDialog() async {
    setState(() {
      _currentTopStep = 4;
    });
    int systemLength = widget.visitModel.systems.length;
    if (_selectedSystemIndex < systemLength - 1) {
      _selectedIEquIndex = -1;
      _currentTopStep = 0;
      _selectedSystemIndex++;
    } else {
      ref.read(visitProceedProvider(widget.visitModel).notifier).confirm();
      // _selectedSystemIndex = 0;
    }

    // return showDialog<void>(
    //   context: context,
    //   // barrierDismissible: false, // user must tap button!
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       shape: const RoundedRectangleBorder(
    //           borderRadius: BorderRadius.all(Radius.circular(30.0))),
    //       contentPadding:
    //           const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
    //       content: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           const Text(
    //             'Operation Completed !',
    //             style: TextStyle(
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           const SizedBox(height: 20),
    //           const Text(
    //             'Your report has been sent successfully !\n Waiting for client’s confirmation',
    //             textAlign: TextAlign.center,
    //             style: TextStyle(fontSize: 14),
    //           ),
    //           const SizedBox(height: 20),
    //           AppBtn(
    //             text: "Done",
    //             circularRadius: 20,
    //             onPress: () {
    //               Navigator.pop(context);
    //               int systemLength = widget.visitModel.systems.length;
    //               setState(() {
    //
    //                 if (_selectedSystemIndex < systemLength - 1) {
    //                   _selectedIEquIndex = -1;
    //                   _currentTopStep = 0;
    //                   _selectedSystemIndex++;
    //                 } else {
    //                   ref
    //                       .read(visitProceedProvider(widget.visitModel).notifier)
    //                       .confirm();
    //                   // _selectedSystemIndex = 0;
    //                 }
    //               });
    //             },
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }

  Widget _note() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _stage(number: 4, name: Localization.current.addNote),
          const SizedBox(height: 10),
           Text(
            Localization.current.noteQue,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          TextFormField(
            maxLines: 4,
            decoration:  InputDecoration(hintText: Localization.current.writeNote),

            // minLines: 4,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: AppBtn(
              text: Localization.current.confirm,
              circularRadius: 10,
              onPressed: _showSuccessConfirmDialog,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _genericKpis() {
    final genericKpis = _currentSystem.genericKpis;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _stage(number: 1, name: Localization.current.genericKpis),
        ),
        CustomCard(
          radius: 16,
          child: Column(
            children: [
              ...List.generate(
                genericKpis.length,
                (index) => KpiQuestion(
                  kpiModel: genericKpis[index],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: AppBtn(
            text: Localization.current.next,
            circularRadius: 10,
            onPressed: () {
              final genericKpisWatch = ref.read(
                equipmentProvider(
                  EquipmentModel(
                      id: -1, name: Localization.current.genericKpis, kpis: genericKpis),
                ).notifier,
              );
              if (!genericKpisWatch.isCompleteChecking) {
                return;
              }
              setState(() {
                _currentTopStep = 1;
              });

              // return;
            },
          ),
        ),
        // const SizedBox(height: 20),
      ],
    );
  }

  Widget _systemsKpiReport() {
    final equipments = [
      EquipmentModel(
        id: -1,
        name: Localization.current.genericKpis,
        kpis: _currentSystem.genericKpis,
      ),
      ..._currentSystem.equipments
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _stage(number: 3, name: Localization.current.equipmentsReview),
        ),
        ...List.generate(equipments.length, (index) {
          final equipmentWatch =
              ref.watch(equipmentProvider(equipments[index]));
          return TimelineTheme(
            data: TimelineThemeData(
              connectorTheme: const ConnectorThemeData(
                  color: Colors.black26, indent: 10, thickness: 2),
            ),
            child: TimelineTile(
              nodeAlign: TimelineNodeAlign.start,
              contents: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      equipmentWatch.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      ...List.generate(
                        equipmentWatch.kpis.length,
                        (index2) {
                          final kpiWatch = ref
                              .watch(kipProvider(equipmentWatch.kpis[index2]));
                          return KpiReport(
                            iLocal: true,
                            kpiModel: kpiWatch.copyWith(
                              options: kpiWatch.getAnswers,
                            ),
                          );
                        },
                      ),
                      if (equipmentWatch.attachFiles.isNotEmpty)
                        Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: AttachmentView(
                            size: 100,
                            isFiles: true,
                            filesImagesSources: equipmentWatch.attachFiles,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              // node: Icon(Icons.add),
              node: const TimelineNode(
                position: 100,
                // indicatorPosition: .1,
                // indicator: ,
                indicator: DotIndicator(
                  position: .02,
                  color: Colors.grey,
                  size: 20,
                ),
                startConnector: SizedBox(),
                endConnector: SolidLineConnector(),
              ),
            ),
          );
        }),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: AppBtn(
            text: Localization.current.next,
            circularRadius: 10,
            onPressed: () {
              setState(() {
                _currentTopStep = 3;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _systemsEquipmentsKpiQuestions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _stage(number: 2, name: Localization.current.equipmentsCheck),
        ),
        // const SizedBox(height: 10),
        _equipments(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: AppBtn(
            text: Localization.current.next,
            circularRadius: 10,
            onPressed: () {
              setState(() {
                _currentTopStep = 2;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _equipments() {
    final equipments = _currentSystem.equipments;
    return Column(
      children: [
        ...List.generate(
          equipments.length,
          (index) {
            final equipmentWatch =
                ref.watch(equipmentProvider(equipments[index]));
            final equipmentWatchNotifier =
                ref.watch(equipmentProvider(equipments[index]).notifier);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: CustomCard(
                    vp: 10,
                    hp: 12,
                    radius: 20,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                if (_selectedIEquIndex == index) {
                                  _selectedIEquIndex = -1;
                                  return;
                                }
                                _selectedIEquIndex = index;
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              equipmentWatchNotifier.isCompleteChecking
                                  ? Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.check,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  : CustomRoundImage(
                                      url: equipmentWatch.image,
                                      size: 30,
                                      borderColor: Colors.blue,
                                    ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    equipmentWatch.name * 2,
                                    maxLines:
                                        index != _selectedIEquIndex ? 1 : null,
                                    overflow: index != _selectedIEquIndex
                                        ? TextOverflow.ellipsis
                                        : null,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  EquipmentHistoryIcon(
                                    equipment: equipmentWatch,
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
                                  const SizedBox(width: 4),
                                  RotatedBox(
                                    quarterTurns:
                                        index == _selectedIEquIndex ? 5 : 3,
                                    child: Icon(
                                      color: index == _selectedIEquIndex
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
                        index != _selectedIEquIndex
                            ? const SizedBox()
                            : _kpisAndAttachments(equipments[index]),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _kpisAndAttachments(EquipmentModel equipment) {
    final equipmentWatchNotifier = ref.watch(equipmentProvider(equipment));
    return Column(
      children: [
        const SizedBox(height: 20),
        ...List.generate(
          equipmentWatchNotifier.kpis.length,
          (index) => KpiQuestion(
            kpiModel: equipmentWatchNotifier.kpis[index],
          ),
        ),
        const SizedBox(height: 10),
        // AttachmentTest(),
        KpiAttachment(
          attachments: equipmentWatchNotifier.attachFiles,
          // onSelected: (files){},
          onSelected: (files) => ref
              .watch(equipmentProvider(equipment).notifier)
              .updateAttachments(files),
        ),
        // const SizedBox(height: 20),
        // _confirm(),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _confirm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () async {},
              color: ResColors.primary,
              height: 50,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(Localization.current.save,
                  style: context.textTheme.labelLarge
                      ?.copyWith(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
