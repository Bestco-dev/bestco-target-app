import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/res/colors.dart';
import '../../../data/types/types_enums.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/spinner.dart';
import '../../custom_widgets/common/titled_text_field.dart';

class JoinUsMobilePage extends StatefulWidget {
  const JoinUsMobilePage({Key? key}) : super(key: key);

  @override
  State<JoinUsMobilePage> createState() => _JoinUsMobilePageState();
}

class _JoinUsMobilePageState extends State<JoinUsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title("البيانات الأساسية"),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "اسم الكريم",
                labelText: "اسم الكريم",
              ),
              validator: MultiValidator([
                RequiredValidator(
                  errorText: 'الاسم مطلوب',
                ),
              ]),
              // onChanged: stateRead.updateName,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "رقم الجوال",
                labelText: "رقم الجوال",
              ),
              validator: MultiValidator([
                RequiredValidator(
                  errorText: "رقم الجوال",
                ),
              ]),
              // onChanged: stateRead.updateName,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "المدينة",
                labelText: "المدينة",
              ),
            ),
            const SizedBox(height: 20),
            _title("البيانات الوظيفية"),
            const SizedBox(height: 16),
            TitledTextField(
              title: "التخصص",
              child: _userType(),
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "عدد سنوات الخبرة",
                labelText: "عدد سنوات الخبرة",
              ),
            ),
            const SizedBox(height: 30),
            const AppBtn(text: "إرسال")
          ],
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Text(
      title,
      textAlign: TextAlign.right,
      style: const TextStyle(
        color: Color(0xFF555B6A),
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }

  Widget _userType() {
    // final state = ref.watch(customerCurdProvider(customer));
    // final stateRead = ref.watch(customerCurdProvider(customer).notifier);
    return ChipsChoice<UserType>.single(
      value: UserType.saleperson,
      // value: state.type,
      onChanged: (value) {},
      // onChanged: (val) => setState(() => tags = val),
      choiceItems: C2Choice.listFrom<UserType, UserType>(
        source: UserType.values,
        value: (i, v) => v,
        label: (i, v) => v.label,
        tooltip: (i, v) => v.label,
      ),
      // choiceItems: UserType.v,
      choiceCheckmark: true,
      leading: const Icon(Icons.select_all),
      // choiceBuilder: (item, i) => Text(item.value.name),
      // choiceTrailingBuilder: (item, i) => Icon(Icons.check_circle),
      choiceStyle: C2ChipStyle.filled(
        borderRadius: BorderRadius.circular(50),
        selectedStyle: const C2ChipStyle(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        foregroundColor: Colors.black,
        color: Colors.grey[200],
        // color: Colors.green
        // backgroundColor: Colors.green,
      ),
    );
  }
}
