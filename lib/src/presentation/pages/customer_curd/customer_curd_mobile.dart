import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/titled_text_field.dart';

class CustomerCurdMobilePage extends ConsumerStatefulWidget {
  final CustomerEntity? customer;
  const CustomerCurdMobilePage({Key? key, this.customer}) : super(key: key);
  @override
  ConsumerState<CustomerCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CustomerCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            TitledTextField(
              title: "اسم العميل",
              isRequired: true,
              child: TextFormField(
                decoration:
                const InputDecoration(hintText: "اسم العميل"),
                validator: MultiValidator([
                  RequiredValidator(
                    errorText: 'اسم العميل مطلوب',
                  ),
                ]),
              ),
            ),
            TitledTextField(
              title: "نوع العميل",
              child: TextFormField(
                decoration:
                const InputDecoration(hintText: "نوع العميل"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
              ),
            ),
            TitledTextField(
              title: "رقم الجوال",
              child: TextFormField(
                decoration:
                const InputDecoration(hintText: "رقم الجوال"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
              ),
            ),
            TitledTextField(
              title: "رقم الهوية",
              child: TextFormField(
                decoration:
                const InputDecoration(hintText: "رقم الهوية"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
              ),
            ),
            TitledTextField(
              title: "البريد الالكتروني",
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "البريد الالكتروني"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
              ),
            ),
            TitledTextField(
              title: "اضف ملاحظة",
              child: TextFormField(
                maxLines: 4,
                decoration:
                const InputDecoration(hintText: "اضف ملاحظة"),
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: AppBtn(
                text: "اضافة",
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 40),
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
