import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/salepersons/curd_view_model.dart';

class SalePersonCurdMobilePage extends ConsumerStatefulWidget {
  final SalePersonEntity? saleperson;
  const SalePersonCurdMobilePage({Key? key, this.saleperson}) : super(key: key);
  @override
  ConsumerState<SalePersonCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<SalePersonCurdMobilePage> {
  late SalePersonEntity saleperson;

  @override
  void initState() {
    saleperson = widget.saleperson != null
        ? widget.saleperson!
        : SalePersonEntity(
            id: -1,
            name: '',
            // type: CustomerType.person,
            address: AddressModel(id: -1),
          );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(salepersonCurdProvider(saleperson));
    final stateRead = ref.watch(salepersonCurdProvider(saleperson).notifier);
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
                initialValue: state.name,
                decoration: const InputDecoration(hintText: "اسم المندوب"),
                validator: MultiValidator([
                  RequiredValidator(
                    errorText: 'اسم المندوب مطلوب',
                  ),
                ]),
                onChanged: stateRead.updateName,
              ),
            ),

            TitledTextField(
              title: "رقم الجوال",
              child: TextFormField(
                initialValue: state.phone,
                decoration: const InputDecoration(hintText: "رقم الجوال"),
                onChanged: stateRead.updatePhone,
              ),
            ),
            TitledTextField(
              title: "كلمة المرور",
              child: TextFormField(
                // initialValue: state.password,
                decoration: const InputDecoration(hintText: "كلمة المرور"),
                onChanged: stateRead.updatePassword,
              ),
            ),

            TitledTextField(
              title: "رقم الهوية",
              child: TextFormField(
                initialValue: state.nationalId,
                decoration: const InputDecoration(hintText: "رقم الهوية"),
                onChanged: stateRead.updateNationalId,
              ),
            ),
            TitledTextField(
              title: "البريد الالكتروني",
              child: TextFormField(
                initialValue: state.email,
                decoration:
                    const InputDecoration(hintText: "البريد الالكتروني"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
                onChanged: stateRead.updateEmail,
              ),
            ),
            TitledTextField(
              title: "اضف ملاحظة",
              child: TextFormField(
                maxLines: 4,
                initialValue: state.description,
                decoration: const InputDecoration(
                  hintText: "اضف ملاحظة",
                ),
                onChanged: stateRead.updateDescription,
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: AppBtn(
                text: "حفظ",
                onPressed: () async {
                  bool check = await ((widget.saleperson == null)
                      ? stateRead.create()
                      : stateRead.update());
                  if (check && context.mounted) {
                    Navigator.pop(context);
                  }
                },
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
