import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../data/types/types_enums.dart';
import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/contract/contract_entity.dart';
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

  @override
  void initState() {
    customer = widget.customer != null
        ? widget.customer!
        : CustomerEntity(
            id: -1,
            name: '',
            type: CustomerType.individual,
            address: AddressModel(id: -1),
          );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(customerCurdProvider(customer));
    final stateRead = ref.watch(customerCurdProvider(customer).notifier);
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
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
              ),
            ),
            TitledTextField(
              title: "رقم الهوية",
              child: TextFormField(
                initialValue: customer.nationalId,
                decoration: const InputDecoration(hintText: "رقم الهوية"),
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
                initialValue: customer.email,
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
                initialValue: customer.description,
                maxLines: 4,
                decoration: const InputDecoration(hintText: "اضف ملاحظة"),
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.white,
              child: AppBtn(
                text: "حفظ",
                onPressed: () {
                  if (widget.customer == null) {
                    stateRead.create();
                  } else {
                    stateRead.update();
                    // stateRead.update(widget.customer!);
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
}
