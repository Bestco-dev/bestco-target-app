import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../data/types/types_enums.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/customers/curd_view_model.dart';

class CustomerCurdMobilePage extends ConsumerStatefulWidget {
  final CustomerEntity? customer;
  const CustomerCurdMobilePage({Key? key, this.customer}) : super(key: key);
  @override
  ConsumerState<CustomerCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CustomerCurdMobilePage> {
  // late final TextEditingController _nameController;
  late CustomerEntity customer;
  String tags = '';
  @override
  void initState() {
    customer = widget.customer != null
        ? widget.customer!
        : CustomerEntity(
            id: -1,
            name: '',
            type: CustomerType.person,
            address: AddressModel(id: -1),
          );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(customerCurdProvider(customer));
    final stateRead = ref.watch(customerCurdProvider(customer).notifier);
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            TitledTextField(
              title: "نوع العميل",
              child: _customerType(),
            ),
            const SizedBox(height: 10),
            TitledTextField(
              title: "اسم العميل",
              isRequired: true,
              child: TextFormField(
                initialValue: state.name,
                // initialValue: customer.name,
                decoration: const InputDecoration(hintText: "اسم العميل"),
                validator: MultiValidator([
                  RequiredValidator(
                    errorText: 'اسم العميل مطلوب',
                  ),
                ]),
                onChanged: stateRead.updateName,
              ),
            ),
            // TitledTextField(
            //   title: "نوع العميل",
            //
            //   child: TextFormField(
            //     decoration: const InputDecoration(hintText: "نوع العميل"),
            //     // validator: MultiValidator([
            //     //   RequiredValidator(
            //     //     errorText: '',
            //     //   ),
            //     // ]),
            //   ),
            // ),
            TitledTextField(
              title: "رقم الجوال",
              child: TextFormField(
                initialValue: customer.phone,
                decoration: const InputDecoration(hintText: "رقم الجوال"),
                // validator: MultiValidator([
                //   RequiredValidator(
                //     errorText: '',
                //   ),
                // ]),
                onChanged: stateRead.updatePhone,
              ),
            ),
            // if (state.type.isIndividual)
            //   TitledTextField(
            //     title: "رقم الهوية",
            //     child: TextFormField(
            //       initialValue: customer.vat,
            //       decoration: const InputDecoration(hintText: "رقم الهوية"),
            //       // validator: MultiValidator([
            //       //   RequiredValidator(
            //       //     errorText: '',
            //       //   ),
            //       // ]),
            //       onChanged: stateRead.updateNationalId,
            //     ),
            //   ),

            // if (state.type.isCompany)
              TitledTextField(
                title: "الرقم الضريبي",
                child: TextFormField(
                  initialValue: customer.vat,
                  decoration: const InputDecoration(hintText: "الرقم الضريبي"),
                  // validator: MultiValidator([
                  //   RequiredValidator(
                  //     errorText: '',
                  //   ),
                  // ]),
                  onChanged: stateRead.updateVATNum,
                ),
              ),
            TitledTextField(
              title: "البريد الالكتروني",
              child: TextFormField(
                initialValue: customer.email,
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
                initialValue: customer.description,
                maxLines: 4,
                decoration: const InputDecoration(hintText: "اضف ملاحظة"),
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
                  bool check = await ((widget.customer == null)
                      ? stateRead.create()
                      : stateRead.update());
                  if (check && context.mounted) {
                    Navigator.pop(context);
                  }
                  // if (widget.customer == null) {
                  //   stateRead.create();
                  // } else {
                  //   stateRead.update();
                  //   // stateRead.update(widget.customer!);
                  // }
                },
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _customerType() {
    final state = ref.watch(customerCurdProvider(customer));
    final stateRead = ref.watch(customerCurdProvider(customer).notifier);
    return ChipsChoice<CustomerType>.single(
      value: state.type,
      onChanged: stateRead.updateType,
      // onChanged: (val) => setState(() => tags = val),
      choiceItems: C2Choice.listFrom<CustomerType, CustomerType>(
        source: CustomerType.values,
        value: (i, v) => v,
        label: (i, v) => v.name,
        tooltip: (i, v) => v.name,
      ),
      // choiceItems: CustomerType.v,
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

  // Widget _customerType() {
  //   return ChipsChoice<String>.multiple(
  //     value: tags,
  //     onChanged: (val) => setState(() => tags = val),
  //     choiceItems: C2Choice.listFrom<String, String>(
  //       source: ["option 1", "option 2"],
  //       value: (i, v) => v,
  //       label: (i, v) => v,
  //       tooltip: (i, v) => v,
  //     ),
  //     choiceCheckmark: true,
  //     choiceStyle: C2ChipStyle.outlined(),
  //   );
  // }
}
