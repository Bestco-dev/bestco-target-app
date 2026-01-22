import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import 'buttons/app_btn.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime date;
  CustomDatePicker({Key? key, required this.date}) : super(key: key);
  final DateRangePickerController dateController = DateRangePickerController();
  @override
  Widget build(BuildContext context) {
    return DropdownSearch(
      items: [],
      popupProps: PopupPropsMultiSelection.menu(

        containerBuilder: (context, popupWidget) {
          return Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: SfDateRangePicker(
                    controller: dateController,
                    initialSelectedDate: date,
                    initialDisplayDate: date,
                    view: DateRangePickerView.month,

                    // styling......


                    headerHeight: context.isPhone?50:50,
                    headerStyle: DateRangePickerHeaderStyle(
                      textAlign: TextAlign.center,
                      textStyle:datePickerTextStyle(context),
                    ),
                    selectionTextStyle: datePickerTextStyle(context,color: Colors.white),
                    selectionShape: DateRangePickerSelectionShape.rectangle,
                    // selectionRadius: 15,



                    rangeTextStyle: datePickerTextStyle(context),
                    monthCellStyle: DateRangePickerMonthCellStyle(
                      textStyle: datePickerTextStyle(context),
                      disabledDatesTextStyle: datePickerTextStyle(context),
                      todayTextStyle: datePickerTextStyle(context),

                    ),
                    yearCellStyle: DateRangePickerYearCellStyle(
                      textStyle: datePickerTextStyle(context),
                      disabledDatesTextStyle: datePickerTextStyle(context),
                      todayTextStyle: datePickerTextStyle(context),
                    ),
                    monthViewSettings: DateRangePickerMonthViewSettings(
                      viewHeaderHeight: context.isPhone?20: 50,
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: datePickerTextStyle(context),
                      ),
                    ),


                    // styling......
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppBtn(
                      text: "اختيار",
                      height: context.isPhone ? 40 : 60,
                      onPressed: () {
                        print(dateController.selectedDate);
                        // invoiceController
                        //     .updatePaymentDate(dateController.selectedDate!);
                        // appNavBack();
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
        // selectionWidget: ,
      ),
      dropdownButtonProps: DropdownButtonProps(
        icon: const Icon(
          Icons.keyboard_arrow_down_sharp,
        ),
        iconSize: context.isPhone?30:50,
      ),
      dropdownBuilder: (context, selectedItem) => Text(
        (dateController.selectedDate ?? date).toYMDEnFormat ?? '',
        style: TextStyle(
          // color: date==null?Color(0x42807e7e): Colors.black,
          color: Colors.black45,
          fontSize: context.isPhone ? 16 : 20,
          fontWeight: FontWeight.w300,
        ),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          hintText: "التاريخ",
        ),
      ),
    );
  }

   TextStyle datePickerTextStyle(BuildContext context,{Color? color}) {
    return  TextStyle(
      fontSize: context.isPhone ? 14 : 22,
      color: color??Colors.black,
    );
  }
}
