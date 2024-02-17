import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../domain/entities/order_services/order_service_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/service/main_services_list_view_model.dart';
import '../../view_models/orders/service/orders_service_list_view_model.dart';
import '../customer_curd/customer_curd.dart';

class OrderServiceDetailsMobilePage extends ConsumerStatefulWidget {
  const OrderServiceDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<OrderServiceDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState
    extends ConsumerState<OrderServiceDetailsMobilePage> {
  late OrderServiceEntity order;
  @override
  Widget build(BuildContext context) {
    order = ref.watch(selectedServiceOrderViewModel)!;
    return CustomAppScaffold(
      isScroll: true,
      appBar: CustomAppBar(
        title: "تفاصيل الطلب",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: Column(
        children: [
          SelectingCustomerWidget(
            isEditable: false,
            onSelected: (customer) {},
            customer: order.customer,
          ),
          
        ],
      ),
    );
  }

  Widget _customerWidget() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            order.subService.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                order.date.toTodayDisplay,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          trailing: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTag(info: "مؤكدة", color: Colors.blueAccent),
              // SizedBox(width: 5),
              // Icon(Icons.arrow_forward_ios, color: Colors.white),
            ],
          ),
        ),
        // const SizedBox(height: 10),
        // Row(
        //   children: [
        //     Expanded(
        //       child: AppBtn(
        //         // isPlane: true,
        //         borderColor: Colors.white,
        //         backgroundColor: Colors.white,
        //         // textColor: Colo,
        //         text: "تأكيد الطلب",
        //         fontSize: 14,
        //         onPressed: () {
        //           CustomModalSheet.showModalSheet(
        //             context,
        //             title: "ملعومات العميل",
        //             child: _customerInfo(),
        //             height: context.height * .7,
        //           );
        //         },
        //       ),
        //     ),
        //     const SizedBox(width: 10),
        //     Expanded(
        //       child: AppBtn(
        //         isPlane: true,
        //         borderColor: Colors.white,
        //         textColor: Colors.white,
        //         text: "تفاصيل الطلب",
        //         fontSize: 14,
        //         onPressed: () {
        //           CustomModalSheet.showModalSheet(
        //             context,
        //             title: "تفاصيل الطلب",
        //             child: _addressInfo(),
        //             height: context.height * .7,
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
