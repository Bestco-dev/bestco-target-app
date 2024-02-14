import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../order_service_curd/order_service_curd_mobile.dart';

class OrderSubServiceMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const OrderSubServiceMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<OrderSubServiceMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderSubServiceMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      hasPadding: false,
      appBar: CustomAppBar(
        title: "اسم الخدمة الرئيسة",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => _subService(),
        itemCount: 4,
      ),
    );
  }

  Widget _subService() {
    return GestureDetector(
      onTap: () {
        CustomModalSheet.showModalSheet(
          context,
          title: "طلب اسم الخدمة",
          hasMarginBottom: false,
          child: OrderServiceCurdMobilePage(),
          height: context.height * .90,
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          // color: const Color(0xFFFFFFFF),
          border: Border.all(color: const Color(0xff555B6A), width: .4),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const ListTile(
          title: Text("اسم الخدمة الفرعية"),
          trailing: Icon(Icons.circle_outlined, color: Colors.black26),
        ),
      ),
    );
  }
}
