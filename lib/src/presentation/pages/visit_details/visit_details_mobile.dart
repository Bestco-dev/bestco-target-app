import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../common/utils/extensions/strings.dart';
import '../../../data/types/types.dart';
import '../../../domain/entities/engineer/engineer_entity.dart';
import '../../../domain/entities/system/system.dart';
import '../../../domain/entities/visit/visit.dart';
import '../../../domain/entities/visit_descriptioin/visit_description.dart';
import '../../custom_widgets/common/audio/audio_widget.dart';
import '../../custom_widgets/common/background_column.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/custom_round_image.dart';
import '../../custom_widgets/common/date_picker/date_picker.dart';
import '../../custom_widgets/common/engineer/engineer.dart';
import '../../custom_widgets/common/kpis/attachment_view.dart';
import '../../custom_widgets/common/recordset/error_recordset.dart';
import '../../custom_widgets/common/status_bar/dark_status_bar.dart';
import '../../custom_widgets/common/system/custom_sys_icon.dart';
import '../../custom_widgets/common/system/system_status.dart';
import '../../custom_widgets/common/visit_tile.dart';
import '../../view_models/visits/visit_view_model.dart';

class VisitDetailsMobilePage extends ConsumerStatefulWidget {
  final int visitId;

  const VisitDetailsMobilePage({Key? key, required this.visitId})
      : super(key: key);

  @override
  ConsumerState<VisitDetailsMobilePage> createState() =>
      _VisitDetailsMobilePageState();
}

class _VisitDetailsMobilePageState
    extends ConsumerState<VisitDetailsMobilePage> {
  late final int _visitId;
  SystemModel? _selected;

  @override
  void initState() {
    super.initState();
    _visitId = widget.visitId;
    Future.microtask(
        () => ref.read(visitViewModelProvider.notifier).load(_visitId));
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(visitViewModelProvider).maybeWhen(
          loading: () => DarkStatusBar(
            child: Scaffold(
              appBar: AppBar(
                title: Text(Localization.of(context).visitDetails),
              ),
              body: const CustomBackgroundWidget(
                isGrad: true,
                child: VisitDetailsPlaceholder(),
              ),
            ),
          ),
          error: (err) => DarkStatusBar(
            child: Scaffold(
              appBar: AppBar(
                title: Text(Localization.of(context).visitDetails),
              ),
              body: RecordSetErrorWidget(
                onRetry: () =>
                    ref.read(visitViewModelProvider.notifier).load(_visitId),
                errorMessage: err.message,
                retryText: Localization.of(context).retry,
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
          data: (VisitModel visit) {
            return RefreshIndicator(
              onRefresh: () async => await ref
                  .read(visitViewModelProvider.notifier)
                  .load(_visitId),
              child: Center(
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(Localization.of(context).visitDetails),
                  ),
                  backgroundColor: Colors.grey[100],
                  body: CustomBackgroundWidget(
                    isGrad: true,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: [
                        ResVerticalGap.gap05,
                        SystemStatus(
                          info: visit.status.name,
                          infoColor: visit.status.getColor,
                        ),
                        ResVerticalGap.gap07,
                        CustomCard(
                          radius: 100,
                          vp: 0,
                          hp: 0,
                          child: ListTile(
                            // horizontalTitleGap: 0,
                            leading: CustomSysIcon(
                              icon: Icons.calendar_month,
                              border: Colors.blue[800],
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Localization.current.date,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        visit.date.toTodayDisplay,
                                      ),
                                      Text(
                                        visit.date.displayTime,
                                      ),
                                      if (visit.isRescheduled)
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 1),
                                          margin: const EdgeInsets.only(top: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.blue[800],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5))),
                                          child: Text(
                                            Localization.current.rescheduled,
                                            style: const TextStyle(
                                              fontSize: 11,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed:()=>_datePick(visit.date),
                                  child: Icon(Icons.update),
                                ),
                              ],
                            ),
                            // trailing: const Text(''),
                          ),
                        ),

                        ResVerticalGap.gap04,
                        CustomCard(
                          radius: 100,
                          vp: 0,
                          hp: 0,
                          child: ListTile(
                            // horizontalTitleGap: 0,
                            leading: CustomSysIcon(
                                icon: Icons.settings,
                                border: Colors.yellow[800]),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Localization.current.type,
                                ),
                                Text(
                                  visit.type.translate,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(),
                              ],
                            ),
                            // trailing: Padding(
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 20),
                            //   child: Text(
                            //     visit.type.translate,
                            //     style: const TextStyle(
                            //         fontWeight: FontWeight.bold),
                            //   ),
                            // ),
                          ),
                        ),
                        ResVerticalGap.gap08,

                        _engineers(visit.engineers),
                        // ResVerticalGap.gap08,
                        // if (visit.description != null)
                        //   _description(visit.description!),
                        if (visit.systems.isNotEmpty) ...[
                          ResVerticalGap.gap08,
                          _systems(visit),
                          // ResVerticalGap.gap12,
                        ],
                        ResVerticalGap.gap08,
                        AppBtn(
                          text: "Approve",
                          backgroundColor: Colors.white,
                          circularRadius: 12,
                        ),
                        ResVerticalGap.gap08,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
  }

  void _datePick(DateTime date) {
    AppCustomDialogs.alertDialog(
      child: CustomDatePicker(
        dateTime: date,
        onChange: (newDate) {
          print("confirmed with $newDate");
        },
      ),
    );
  }
  Widget _engineers(List<EngineerEntity> engineers) {
    final textTheme = context.textTheme;
    return CustomCard(
      radius: 20,
      hp: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CustomSysIcon(
              // padding: ,
              icon: Icons.settings_input_svideo_rounded,
              border: Colors.green[800],
            ),
            title: Text("Engineers on charge",
                style: textTheme.headlineSmall
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          ...engineers.map(
            (e) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: engineers.length == 1 ? 0 : null,
                child: EngineerWidget(
                  engineer: e,
                  isDetails: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _systems(VisitModel visit) {
    return CustomCard(
      radius: 20,
      vp: 0,
      child: Column(
        children: [
          ResVerticalGap.gap05,
          ListTile(
            // horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            leading: CustomSysIcon(
              icon: Icons.settings_input_svideo_rounded,
              border: Colors.green[800],
            ),
            title: Text(
              Localization.current.systems,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          ResVerticalGap.gap05,
          ...visit.systems.map(
            (system) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: CustomCard(
                vp: 0,
                background: _selected?.id == system.id
                    ? Colors.grey[10]
                    : const Color(0xffE2E9F2),
                radius: 20,
                child: Column(
                  children: [
                    ListTile(
                      // onTap: () => setState(() {
                      //   if (_selected?.id == system.id) {
                      //     _selected = null;
                      //     return;
                      //   }
                      //   _selected = system;
                      // }),
                      horizontalTitleGap: 0,
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(system.name),
                          ),
                          Row(
                            children: [
                              RotatedBox(
                                quarterTurns:
                                    _selected?.id == system.id ? 5 : 3,
                                child: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  size: 20,
                                  color: _selected?.id == system.id
                                      ? ResColors.primary
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // if (_selected?.id == system.id)
                    //   Column(
                    //     children: [
                    //       _safetyAndTestReq(system),
                    //     ],
                    //   ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _safetyAndTestReq(SystemModel systemModel) {
    final textTheme = context.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        if (_selected != null) ...[
          if (_selected!.hasInfo) ...[
            Text(Localization.of(context).checkInfo,
                style: textTheme.headlineSmall
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
            ResVerticalGap.gap04,
            BackgroundColumn(
              children: [
                if (_selected!.hasRecurring)
                  Row(
                    children: [
                      Expanded(
                        child: ColumnCollection(
                            title: Localization.of(context).maintenancePeriod,
                            subtitle: _selected!.recurringRuleType!
                                .getPeriod(_selected!.recurringInterval!)),
                      ),
                      const Icon(Iconsax.warning_2,
                          color: ResColors.error, size: 42)
                    ],
                  ),
                if (_selected!.hasGracePeriod || _selected!.hasSequence) ...[
                  ResVerticalGap.gap05,
                  Row(
                    children: [
                      if (_selected!.hasGracePeriod)
                        Expanded(
                            child: ColumnCollection(
                                title: Localization.of(context).gracePeriodDays,
                                subtitle: _selected!.gracePeriod!.toString())),
                      if (_selected!.hasSequence)
                        Expanded(
                            child: ColumnCollection(
                                title: Localization.of(context).sequence,
                                subtitle: _selected!.id.toString())),
                    ],
                  ),
                ]
              ],
            ),
            ResVerticalGap.gap04,
          ],
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(Localization.of(context).testRequirements,
                style: textTheme.headlineSmall
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          ResVerticalGap.gap06,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...systemModel.testEquipments.map(
                (e) => Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TestRequirement(
                    imageUrl: e.image,
                    title: e.name,
                    subtitle: e.description?.capitalize,
                  ),
                ),
              ),
            ],
          ),
          ResVerticalGap.gap05,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Text(Localization.of(context).safetyRequirements,
                style: textTheme.headlineSmall
                    ?.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          ResVerticalGap.gap06,
          Column(
            children: [
              ...systemModel.safetyEquipments.map(
                (e) => Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TestRequirement(
                    imageUrl: e.image,
                    title: e.name,
                    subtitle: e.description?.capitalize,
                  ),
                ),
                // TestRequirement(
                //     imageUrl: ResAssets.test1DemoImage,
                //     title: "Flame tester",
                //     subtitle:
                //         "Inform the responsible entity or nominated person to the extent of the impairment during the routine service so that alternative safety arrangements can be implemented."),
                // ResVerticalGap.gap05,
                // Divider(height: 1, color: Colors.grey[300]),
                // ResVerticalGap.gap05,
                // TestRequirement(
                //     imageUrl: ResAssets.test2DemoImage,
                //     title: "Heat Gun",
                //     subtitle:
                //         "Take all reasonable precautions as to not adversely affect the normal operation of any system except for those systems to be maintained or to adversely affect occupants of the building, or to cause any situation that will cause an unwanted alarm."),
              )
            ],
          ),
          ResVerticalGap.gap05,
        ]
      ],
    );
  }

  Widget _description(VisitDescriptionModel description) {
    final textTheme = context.textTheme;
    return CustomCard(
      radius: 20,
      hp: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CustomSysIcon(
              icon: Icons.info_outline,
              border: Colors.green[800],
            ),
            title: Text(Localization.current.description,
                style: textTheme.headlineSmall
                    ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
            // subtitle:,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              description.description ?? '',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // padding: const EdgeInsets.symmetric(horizontal: 16),
            // height: 100,
            // color: Colors.green,
            child: Column(
              children: [
                ...description.voiceRecords.map(
                  (e) => AudioPlayerWidget(link: e.url),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          AttachmentView(
            networkImagesSources: List.generate(
                description.attachments.length ?? 0,
                (index) => description.attachments[index].url),
          ),
        ],
      ),
    );
  }
}

class ColumnCollection extends StatelessWidget {
  final String title;
  final String subtitle;

  const ColumnCollection(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: textTheme.labelLarge
              ?.copyWith(fontWeight: FontWeight.w300, color: Colors.grey),
        ),
        ResVerticalGap.gap03,
        Text(subtitle),
      ],
    );
  }
}

class TestRequirement extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String? subtitle;

  const TestRequirement(
      {Key? key, this.imageUrl, required this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageUrl != null)
            Row(
              children: [
                CustomRoundImage(
                  url: imageUrl!,
                  radius: 10,
                ),
                ResHorizontalGap.gap05,
              ],
            ),
          Expanded(
            child: ColumnCollection(title: title, subtitle: subtitle ?? ''),
          ),
        ],
      ),
    );
  }
}
