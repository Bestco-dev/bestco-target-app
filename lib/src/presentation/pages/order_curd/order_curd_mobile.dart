import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/selected_customer.dart';

class OrderCurdMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const OrderCurdMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<OrderCurdMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      hasPadding: false,
      appBar: const CustomAppBar(
        title: "اضافة طلب",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SelectingCustomerWidget(
              onSelected: (customer) {
                // ref.read(orderSelectedCustomerViewModel.notifier).state =
                //     customer;
              },
              customer:
                  ref.watch(orderSelectedCustomerViewModel.notifier).state,
            ),
            const SizedBox(height: 20),
            CustomCard(
              vp: 4,
              hp: 4,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: (){

                },
                title: Text("اضافة منتج"),
                leading: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // Widget _item(
  //     {required Widget child, required String title, bool isRequired = true}) {
  //   return Container(
  //     padding: const EdgeInsets.all(10),
  //     color: Colors.white,
  //     child: ListTile(
  //       title: Text.rich(
  //         TextSpan(
  //           text: title,
  //           children: [
  //             if (isRequired)
  //               const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
  //           ],
  //         ),
  //       ),
  //       subtitle: child,
  //     ),
  //   );
  // }
}
