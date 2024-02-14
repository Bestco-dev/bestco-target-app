import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../data/demo/question_demo.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/question_entity/question_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_checkbox.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/selected_customer.dart';

class OrderServiceCurdMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const OrderServiceCurdMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<OrderServiceCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderServiceCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SelectingCustomerWidget(
              onSelected: (customer) {
                ref
                    .read(orderSelectedCustomerViewModel.notifier)
                    .update((state) => customer);
              },
              customer: ref.watch(orderSelectedCustomerViewModel),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              itemBuilder: (context, index) => Container(
                child: _questionWidget(getQuestion()),
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
            ),
            const SizedBox(height: 10),
            AppBtn(
              text: "إرسال",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _questionWidget(QuestionEntity question) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(question.title),
        subtitle: Container(
          margin: const EdgeInsets.only(top: 10),
          child: _questionTypeWidget(question),
        ),
      ),
    );
  }

  Widget _questionTypeWidget(QuestionEntity question) {
    switch (question.type) {
      case QuestionType.char_box:
        return TextFormField(
          decoration: InputDecoration(
            labelText: question.title,
          ),
        );
      case QuestionType.text_box:
        return TextFormField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: question.title,
          ),
        );
      case QuestionType.numerical_box:
        return TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: question.title,
          ),
        );
      case QuestionType.simple_choice:
        return Wrap(
          children: [
            ...question.valuesStrings.map(
              (e) => AppCustomCheckBox(
                label: e,
              ),
            ),
          ],
        );
      case QuestionType.multiple_choice:
        return Wrap(
          children: [
            ...question.valuesStrings.map(
              (e) => AppCustomCheckBox(
                label: e,
                isRadio: false,
              ),
            ),
          ],
        );
      case QuestionType.date:
        return TextFormField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: question.title,
          ),
        );
      case QuestionType.dateTime:
        return TextFormField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: question.title,
          ),
        );
      default:
        return Container();
    }
  }
}
