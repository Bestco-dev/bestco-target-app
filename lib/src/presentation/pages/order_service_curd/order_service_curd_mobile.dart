import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/titled_text_field.dart';

class OrderServiceCurdMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const OrderServiceCurdMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<OrderServiceCurdMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderServiceCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body:SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }

}
