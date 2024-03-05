import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/types/types_enums.dart';
import '../../../domain/entities/question_entity/question_entity.dart';
import '../../../domain/entities/service_sub/sub_service.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_checkbox.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../view_models/orders/service/order_service_curd_view_model.dart';
import '../../view_models/orders/service/question_view_Model.dart';

class OrderServiceCurdMobilePage extends ConsumerStatefulWidget {
  final SubServiceEntity? subSubService;
  const OrderServiceCurdMobilePage({Key? key, this.subSubService})
      : super(key: key);
  @override
  ConsumerState<OrderServiceCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderServiceCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    final questionsList = ref.watch(subServiceQuestionsProvider);
    print("lenth .. ${questionsList.length}");
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SelectingCustomerWidget(
              onSelected: (customer) {
                ref
                    .read(orderSelectedCustomerProvider.notifier)
                    .update((state) => customer);
              },
              customer: ref.watch(orderSelectedCustomerProvider),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              itemBuilder: (context, index) {
                // final q
                return Container(
                  child: _questionWidget(questionsList[index]),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              itemCount: questionsList.length,
              shrinkWrap: true,
            ),
            const SizedBox(height: 10),
            AppBtn(
              text: "إرسال",
              onPressed: () async {
                final check = await ref
                    .read(orderServiceViewModelProvider.notifier)
                    .create(widget.subSubService?.id ?? 0);

                if (check && mounted) Navigator.pop(context);
              },
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
    final state = ref.watch(questionProvider(question));
    final stateRead = ref.read(questionProvider(question).notifier);
    switch (state.type) {
      case QuestionType.char_box:
        return TextFormField(
          onChanged: stateRead.makeAnswer,
          decoration: InputDecoration(
            labelText: state.title,
          ),
        );
      case QuestionType.text_box:
        return TextFormField(
          maxLines: 4,
          onChanged: stateRead.makeAnswer,
          decoration: InputDecoration(
            hintText: state.title,
          ),
        );
      case QuestionType.numerical_box:
        return TextFormField(
          keyboardType: TextInputType.number,
          onChanged: stateRead.makeAnswer,
          decoration: InputDecoration(
            hintText: state.title,
          ),
        );
      case QuestionType.simple_choice:
        return Wrap(
          children: [
            ...state.valuesStrings.map(
              (e) => AppCustomCheckBox(
                label: e,
                isChecked: e == state.answer,
                onPress: () {
                  stateRead.makeAnswer(e);
                },
              ),
            ),
          ],
        );
      case QuestionType.multiple_choice:
        return Wrap(
          children: [
            ...state.valuesStrings.map(
              (e) => AppCustomCheckBox(
                label: e,
                isRadio: false,
                isChecked: ((state.answer as List?) ?? []).contains(e),
                onPress: () {
                  stateRead.makeAnswer(e);
                },
              ),
            ),
          ],
        );
      case QuestionType.date:
        return TextFormField(
          keyboardType: TextInputType.datetime,
          onChanged: stateRead.makeAnswer,
          decoration: InputDecoration(
            hintText: state.title,
          ),
        );
      case QuestionType.dateTime:
        return TextFormField(
          keyboardType: TextInputType.datetime,
          onChanged: stateRead.makeAnswer,
          decoration: InputDecoration(
            hintText: state.title,
          ),
        );
      default:
        return Container();
    }
  }
}
