import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/date_range/date_range.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../custom_widgets/common/status_bar_container.dart';
import '../../custom_widgets/common/visit_tile.dart';
import '../../view_models/language_view_model.dart';
import '../../view_models/visits/visits_view_model.dart';
import '../visit_details/visit_details.dart';

class CalenderMobilePage extends ConsumerStatefulWidget {
  const CalenderMobilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalenderMobilePage> createState() => _CalenderMobilePageState();
}

class _CalenderMobilePageState extends ConsumerState<CalenderMobilePage> {
  DateTime nowDate = DateTime.now();
  DateRangeModel dateRangeModel = const DateRangeModel();

  @override
  void initState() {
    Future.microtask(() => ref
        .read(visitsCalenderViewModelProvider(dateRangeModel).notifier)
        .load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(visitsCalenderViewModelProvider(dateRangeModel));
    final locale = ref.watch(languageProvider);
    return Scaffold(
      body: CustomBackgroundWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: SafeArea(
                  child: _dateTime(),
                ),
              ),
              Container(
                child: state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  // loading: () => const CircularProgressIndicator(),
                  loading: () => const _Placeholder(),
                  data: (visits) => Column(
                    children: [
                      ResVerticalGap.gap08,
                      ...visits
                          .map(
                            (visit) => VisitTile(
                              visit: visit,
                              onPressed: () {
                                context.pushNamed(VisitDetailsPage.pageName,
                                    pathParameters: {
                                      "id": visit.id.toString()
                                    });
                              },
                            ),
                          )
                          .toList(),
                      ResVerticalGap.gap12,
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

  Widget _dateTime() {
    return SfDateRangePicker(
      headerHeight: context.isPhone ? 70 : 50,
      headerStyle: DateRangePickerHeaderStyle(
        textAlign: TextAlign.center,
        textStyle: datePickerTextStyle(),
      ),
      selectionTextStyle: datePickerTextStyle(color: Colors.black),
      rangeTextStyle: datePickerTextStyle(),
      endRangeSelectionColor: Colors.white,
      startRangeSelectionColor: Colors.white,
      // enablePastDates: false,
      monthCellStyle: DateRangePickerMonthCellStyle(
        textStyle: datePickerTextStyle(),
        disabledDatesTextStyle: datePickerTextStyle(),
        todayTextStyle: datePickerTextStyle(),
      ),
      yearCellStyle: DateRangePickerYearCellStyle(
        textStyle: datePickerTextStyle(),
        disabledDatesTextStyle: datePickerTextStyle(),
        todayTextStyle: datePickerTextStyle(
          color: Colors.black,
        ),
      ),
      monthViewSettings: DateRangePickerMonthViewSettings(
        // viewHeaderHeight: context.isPhone ? 20 : 50,
        viewHeaderStyle: DateRangePickerViewHeaderStyle(
          textStyle: datePickerTextStyle(),
        ),
      ),
      onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
        if (args.value is PickerDateRange) {
          setState(() {
            dateRangeModel = dateRangeModel.copyWith(
              startDate: args.value.startDate,
              endDate: args.value.endDate,
            );
          });
          runCalenderFilter(ref, dateRangeModel);
        }
      },
      selectionMode: DateRangePickerSelectionMode.range,
      maxDate: nowDate,
      minDate: DateTime(nowDate.year - 5, nowDate.month, nowDate.day),

      rangeSelectionColor: const Color(0xff4c8bbeff),
    );
  }

  TextStyle datePickerTextStyle({Color? color}) {
    return TextStyle(
      fontSize: context.isPhone ? 16 : 22,
      color: color ?? Colors.white,
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DarkStatusBar(
      child: Column(
        children: [
          ResVerticalGap.gap08,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RoundedSkeleton(width: double.infinity, height: 120),
          ),
          ResVerticalGap.gap05,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RoundedSkeleton(width: double.infinity, height: 120),
          ),
          ResVerticalGap.gap05,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: RoundedSkeleton(width: double.infinity, height: 120),
          ),
        ],
      ),
    );
  }
}
