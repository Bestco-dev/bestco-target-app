import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/demo/visits.dart';
import '../../custom_widgets/common/audio_recorder/audio_recoder_widget.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/date_picker/date_picker.dart';
import '../../custom_widgets/common/kpis/kpi_attachment.dart';
import '../../custom_widgets/common/system/custom_sys_icon.dart';
import '../../view_models/visits/proceed/visit_proceed_view_model.dart';

class ProceedEmergencyMobilePage extends ConsumerStatefulWidget {
  const ProceedEmergencyMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProceedEmergencyMobilePage> createState() =>
      _ProceedEmergencyMobilePageState();
}

class _ProceedEmergencyMobilePageState
    extends ConsumerState<ProceedEmergencyMobilePage> {
  List<File> attach = [];
  TextEditingController noteController = TextEditingController();

  DateTime? dateTime;

  final noteFormKey = GlobalKey<FormState>();

  TimeOfDay? get time =>
      (dateTime?.hasTime ?? false) ? dateTime?.getTime : null;
  DateTime get getDate => dateTime != null ? dateTime! : DateTime.now();

  @override
  Widget build(BuildContext context) {

    print(dateTime);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency Request"),
      ),
      // backgroundColor: ResColors.background,CustomBackgroundWidget
      body: CustomBackgroundWidget(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          // color: Colors.blue,
          child: Column(
            children: [
              const SizedBox(height: 20),
              _date(),
              const SizedBox(height: 20),
              _note(),
              const SizedBox(height: 20),
              // const SizedBox(height: 20),
              KpiAttachment(
                attachments: attach,
                labelColor: Colors.white,
                onSelected: (files) {
                  setState(() {
                    attach = files;
                  });
                },
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: AppBtn(
                  text: "Request",
                  circularRadius: 10,
                  backgroundColor: Colors.white,
                  onPressed: () {
                    if (!(noteFormKey.currentState!.validate())) return;
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _date() {
    return CustomCard(
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
            Expanded(
              child: Column(
                children: [
                  Text(
                    "${getDate.toTodayDisplay}",
                  ),
                  if (time != null)
                    Text(
                      "${time!.format(context)}",
                    ),
                ],
              ),
            ),
            TextButton(
              onPressed: _datePick,
              child: Text(
                "change",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
        // trailing: const Text(''),
      ),
    );
  }

  Future<void> _confirm() async {
    bool x = await ref
        .read(visitProceedProvider(getVisit()).notifier)
        .confirmEmergency(
      note: noteController.text,
      attach: attach,
      systems: [],
      equipments: [],
    );
  }

  void _datePick() {
    AppCustomDialogs.alertDialog(
      child: CustomDatePicker(
        dateTime: dateTime,
        onChange: (date) {
          print("confirmed with $date");
          setState(() {
            dateTime = date;
          });
        },
      ),
    );
  }

  Widget _note() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: noteFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Emergency Description",
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  // const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      maxLines: 4,
                      controller: noteController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: Localization.current.writeNote,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                      // minLines: 4,
                    ),
                  ),
                  // const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: AudioRecorderWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
