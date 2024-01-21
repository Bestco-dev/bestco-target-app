import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/use_cases/systems/customers_view_model.dart';
import '../../custom_widgets/common/buttons/custom_button.dart';
import '../../custom_widgets/common/custom_background_widget/custom_background_widget.dart';
import '../invoices/invoices.dart';

class InvoicingMobilePage extends ConsumerStatefulWidget {
  const InvoicingMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<InvoicingMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<InvoicingMobilePage> {
  int selected = 0;



  void changeSelection(int index){
    setState(() {
      selected=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(systemsPaginationViewModelProvider);
    final stateRead = ref.read(systemsPaginationViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Invoicing",
        ),
      ),
      body: CustomBackgroundWidget(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.transparent,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: CustomButton(
                      label: "Quatation",
                      background:  selected!=0?Colors.white:Colors.blue[900]!,
                      onPress: ()=>changeSelection(0),
                      // isPlane: selected==0,
                      // isPlane: true,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      label: "Sales orders",
                      background:  selected!=1?Colors.white:Colors.blue[900]!,
                      onPress: ()=>changeSelection(1),

                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      label: "Invoices",
                      background:  selected!=2?Colors.white:Colors.blue[900]!,
                      onPress: ()=>changeSelection(2),


                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: InvoicesPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
