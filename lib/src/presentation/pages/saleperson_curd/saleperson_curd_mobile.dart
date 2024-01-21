import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/titled_text_field.dart';

class SalePersonCurdMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const SalePersonCurdMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<SalePersonCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<SalePersonCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 10),
            TitledTextField(
              title: "اسم المندوب",
              isRequired: true,
              child: TextFormField(
                decoration: const InputDecoration(hintText: "اسم المندوب"),
                validator: MultiValidator([
                  RequiredValidator(
                    errorText: 'اسم المندوب مطلوب',
                  ),
                ]),
              ),
            ),

            TitledTextField(
              title: "رقم الجوال",
              child: TextFormField(
                decoration: const InputDecoration(hintText: "رقم الجوال"),
              ),
            ),
            TitledTextField(
              title: "كلمة المرور",
              child: TextFormField(
                decoration: const InputDecoration(hintText: "كلمة المرور"),
              ),
            ),

            TitledTextField(
              title: "رقم الهوية",
              child: TextFormField(
                decoration: const InputDecoration(hintText: "رقم الهوية"),
              ),
            ),
            TitledTextField(
              title: "البريد الالكتروني",
              child: TextFormField(
                decoration:
                    const InputDecoration(hintText: "البريد الالكتروني"),
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
                decoration: const InputDecoration(
                  hintText: "اضف ملاحظة",

                ),
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: AppBtn(
                text: "حفظ",
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
