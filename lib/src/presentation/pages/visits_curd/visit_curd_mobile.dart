import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../domain/entities/address/address.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_dialogs_bar.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/salepersons/curd_view_model.dart';
import '../../view_models/visits/curd_view_model.dart';

class VisitCurdMobilePage extends ConsumerStatefulWidget {
  final VisitEntity? visit;
  const VisitCurdMobilePage({Key? key, this.visit}) : super(key: key);
  @override
  ConsumerState<VisitCurdMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<VisitCurdMobilePage> {
  late VisitEntity saleperson;

  @override
  void initState() {
    saleperson = widget.visit != null ? widget.visit! : const VisitEntity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(visitCurdProvider(saleperson));
    final stateRead = ref.watch(visitCurdProvider(saleperson).notifier);
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: SelectingCustomerWidget(
                onSelected: (customer) {
                  // orderViewModelRead.updateOrderCustomer(customer);
                  stateRead.updateCustomer(customer);
                },
                customer: state.customer,
              ),
            ),

            const SizedBox(height: 10),

            GestureDetector(
              onTap: () {
                AppCustomDialogs.alertDialog(
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: SfDateRangePicker(),
                  ),
                );
              },
              child: TitledTextField(
                title: "التاريخ",
                child: TextFormField(
                  // maxLines: 4,
                  enabled: false,
                  initialValue: state.description,
                  decoration: const InputDecoration(
                    hintText: "التاريخ",
                  ),
                  onChanged: stateRead.updateDescription,
                ),
              ),
            ),
            const SizedBox(height: 10),

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
                  bool check = await ((widget.visit == null)
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
