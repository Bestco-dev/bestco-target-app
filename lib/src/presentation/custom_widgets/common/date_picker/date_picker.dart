import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../common/utils/extensions/context.dart';
import '../../../../common/utils/extensions/datetime.dart';
import '../buttons/app_btn.dart';
import 'time_picker.dart';

class CustomDatePicker extends StatefulWidget {
  final Function(DateTime date) onChange;
  final DateTime? dateTime;
  const CustomDatePicker({super.key, this.dateTime, required this.onChange});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime now = DateTime.now();
  TimeOfDay? _time;
  late DateTime _dateTime;
  @override
  void initState() {
    _dateTime = widget.dateTime ?? DateTime(now.year, now.month, now.day);
    if (_dateTime.hasTime) {
      _time = TimeOfDay(hour: _dateTime.hour, minute: _dateTime.minute);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 2,
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Time",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: context.width,
            child: ShowTimePickerApp(
              time: _time,
              onChange: (value) {
                _time = value;
              },
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.single,
              initialSelectedDate: widget.dateTime?? now,
              minDate: DateTime.now(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: AppBtn(
                  text: "Cancel",
                  isPlane: true,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AppBtn(
                  text: "Confirm",
                  onPressed: _confirm,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _confirm() {
    if (_time != null) {
      _dateTime = DateTime(
        _dateTime.year,
        _dateTime.month,
        _dateTime.day,
        _time!.hour,
        _time!.minute,
      );
    }
    widget.onChange(_dateTime);
    Navigator.pop(context);
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    final date = args.value as DateTime;
    _dateTime = DateTime(date.year, date.month, date.day);
  }
}
