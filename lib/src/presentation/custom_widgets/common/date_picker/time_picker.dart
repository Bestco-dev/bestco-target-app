import 'package:flutter/material.dart';

import '../../../../common/res/router.dart';
import '../../../../common/utils/extensions/context.dart';

class ShowTimePickerApp extends StatefulWidget {
  final Function(TimeOfDay time) onChange;
  final TimeOfDay? time;
  const ShowTimePickerApp({required this.onChange, this.time, super.key});
  @override
  State<ShowTimePickerApp> createState() => _ShowTimePickerAppState();
}

class _ShowTimePickerAppState extends State<ShowTimePickerApp> {
  TimeOfDay? selectedTime;
  TimePickerEntryMode entryMode = TimePickerEntryMode.dial;
  Orientation? orientation;
  TextDirection textDirection = TextDirection.ltr;
  MaterialTapTargetSize tapTargetSize = MaterialTapTargetSize.padded;
  bool use24HourTime = false;
  TextEditingController timeController = TextEditingController(text: "sdf");

  @override
  void initState() {
    selectedTime = widget.time;
    timeController.text = "hell";

    // timeController=TextEditingController();


    timeController.text = widget.time?.format(NavigationService.context!) ?? '';
    super.initState();
  }

  @override
  void dispose() {
    timeController.dispose();
    super.dispose();
  }

  void _updateTextField() {
    timeController.text = selectedTime?.format(context) ?? '';
  }

  String get timeString => selectedTime?.format(context) ?? '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? time = await showTimePicker(
          context: context,
          initialTime: selectedTime ?? TimeOfDay.now(),
          initialEntryMode: entryMode,
          orientation: orientation,
          builder: (BuildContext context, Widget? child) {
            // We just wrap these environmental changes around the
            // child in this builder so that we can apply the
            // options selected above. In regular usage, this is
            // rarely necessary, because the default values are
            // usually used as-is.
            return Theme(
              data: Theme.of(context).copyWith(
                materialTapTargetSize: tapTargetSize,
              ),
              child: Directionality(
                textDirection: textDirection,
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    alwaysUse24HourFormat: use24HourTime,
                  ),
                  child: child!,
                ),
              ),
            );
          },
        );

        setState(() {
          selectedTime = time;
        });
        _updateTextField();
        if (selectedTime != null) {
          widget.onChange(selectedTime!);
        }
      },
      child: TextFormField(
        enabled: false,
        // initialValue: "timeString",
        controller: timeController,
        decoration: InputDecoration(
          hintText: "Select time",
          // labelText: " time",
          suffixIcon: Container(
            // height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // width: 100,
            constraints: const BoxConstraints(
              minHeight: 54,
              minWidth: 50,
              maxWidth: 150,
            ),
            decoration: BoxDecoration(
              // color: Colors.black12,
              // color: Color(0xb6c04a4a),
              border: context.isRtl
                  ? const Border(
                      right: BorderSide(width: .2),
                    )
                  : const Border(
                      left: BorderSide(width: .2),
                    ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// This is a simple card that presents a set of radio buttons (inside of a
// RadioSelection, defined below) for the user to select from.
class ChoiceCard<T extends Object?> extends StatelessWidget {
  const ChoiceCard({
    super.key,
    required this.value,
    required this.choices,
    required this.onChanged,
    required this.choiceLabels,
    required this.title,
  });

  final T value;
  final Iterable<T> choices;
  final Map<T, String> choiceLabels;
  final String title;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      // If the card gets too small, let it scroll both directions.
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                ),
                for (final T choice in choices)
                  RadioSelection<T>(
                    value: choice,
                    groupValue: value,
                    onChanged: onChanged,
                    child: Text(choiceLabels[choice]!),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EnumCard<T extends Enum> extends StatelessWidget {
  const EnumCard({
    super.key,
    required this.value,
    required this.choices,
    required this.onChanged,
  });

  final T value;
  final Iterable<T> choices;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return ChoiceCard<T>(
        value: value,
        choices: choices,
        onChanged: onChanged,
        choiceLabels: <T, String>{
          for (final T choice in choices) choice: choice.name,
        },
        title: value.runtimeType.toString());
  }
}

// A button that has a radio button on one side and a label child. Tapping on
// the label or the radio button selects the item.
class RadioSelection<T extends Object?> extends StatefulWidget {
  const RadioSelection({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.child,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final Widget child;

  @override
  State<RadioSelection<T>> createState() => _RadioSelectionState<T>();
}

class _RadioSelectionState<T extends Object?> extends State<RadioSelection<T>> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 8),
          child: Radio<T>(
            groupValue: widget.groupValue,
            value: widget.value,
            onChanged: widget.onChanged,
          ),
        ),
        GestureDetector(
            onTap: () => widget.onChanged(widget.value), child: widget.child),
      ],
    );
  }
}
