import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/utils/extensions/datetime.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../view_models/orders/orders_products_list_view_model.dart';

class OrderDetailsMobilePage extends ConsumerStatefulWidget {
  const OrderDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<OrderDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderDetailsMobilePage> {
  late OrderEntity order;
  @override
  Widget build(BuildContext context) {
    order = ref.watch(selectedProductOrderViewModel)!;
    return CustomAppScaffold(
      isScroll: true,
      appBar: CustomAppBar(
        title: "طلبية منتجات",
        subTitle: _customerWidget(),
        // subTitle: AppBtn(text: "Testing"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectingCustomerWidget(
            isEditable: false,
            onSelected: (customer) {},
            customer: order.customer,
          ),
          const SizedBox(height: 30),
          _products(),
        ],
      ),
    );
  }

  Widget _products() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "المنتجات",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        const SizedBox(height: 5),
        ...List.generate(order.lines.length, (index) {
          OrderLineEntity line = order.lines[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: .3),
                borderRadius: BorderRadius.circular(4)),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF50B663),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                        children: [
                          TextSpan(
                            text: '${line.totalPrice ?? ''}',
                          ),
                          const TextSpan(text: ' '),
                          const TextSpan(
                            text: 'ر.س',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Text(line.product.name),
              trailing: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: ShapeDecoration(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  "${line.qtn}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _customerWidget() {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title:  Text(
            order.name,
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
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTag(info: order.state.label, color: order.state.color),
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
