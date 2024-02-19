import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/order_services/order_service_entity.dart';
import '../../../domain/entities/question_entity/question_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/service/main_services_list_view_model.dart';
import '../../view_models/orders/service/orders_service_list_view_model.dart';
import '../customer_curd/customer_curd.dart';

class OrderServiceDetailsMobilePage extends ConsumerStatefulWidget {
  const OrderServiceDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<OrderServiceDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState
    extends ConsumerState<OrderServiceDetailsMobilePage> {
  late OrderServiceEntity order;
  @override
  Widget build(BuildContext context) {
    order = ref.watch(selectedServiceOrderViewModel)!;
    log(order.toJson().toString());
    return CustomAppScaffold(
      isScroll: true,
      appBar: CustomAppBar(
        title: "تفاصيل الطلب",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              CustomTag(info: order.mainService.name),
              const SizedBox(width: 10),
              CustomTag(
                info: order.subService.name,
                color: Colors.blueGrey,
              ),
            ],
          ),
          const SizedBox(height: 10),
          SelectingCustomerWidget(
            isEditable: false,
            onSelected: (customer) {},
            customer: order.customer,
          ),
          const SizedBox(height: 10),
          _info(),
        ],
      ),
    );
  }

  Widget _info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "بيانات الطلب",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        const SizedBox(height: 5),
        ...List.generate(order.questions.length, (index) {
          QuestionEntity question = order.questions[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: .1),
                borderRadius: BorderRadius.circular(4)),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(question.title),
              subtitle: _answer(question),
              // subtitle: CustomTag(info: question.answer ?? 'غير مجاوب'),
            ),
          );
        }),
      ],
    );
  }

  Widget _answer(QuestionEntity question) {
    switch (question.type) {
      case QuestionType.multiple_choice:
        return Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            ...List.generate(
                (question.answer as List).length,
                (index) =>
                    CustomTag(info: (question.answer as List<String>)[index]))
          ],
        );

      default:
        return Wrap(
          children: [
            CustomTag(
              info: question.answer ?? 'غير مجاوب',
              color: question.type.color,
            ),
          ],
        );
    }
  }

  Widget _customerWidget() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            order.subService.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                order.date.toTodayDisplay,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTag(info: "مؤكدة", color: Colors.blueAccent),
              // SizedBox(width: 5),
              // Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
