import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/res/colors.dart';
import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../custom_widgets/common/app_nav.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/selected_customer.dart';
import '../products/products.dart';

class OrderCurdMobilePage extends ConsumerStatefulWidget {
  final OrderEntity? order;
  const OrderCurdMobilePage({Key? key, this.order}) : super(key: key);
  @override
  ConsumerState<OrderCurdMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      hasPadding: false,
      appBar: const CustomAppBar(
        title: "اضافة طلب",
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SelectingCustomerWidget(
              onSelected: (customer) {
                ref
                    .read(orderSelectedCustomerViewModel.notifier)
                    .update((state) => customer);
              },
              customer: ref.watch(orderSelectedCustomerViewModel),
            ),
            const SizedBox(height: 20),
            ...ref.watch(orderLinesViewModel.notifier).state.map(
                  (line) => Container(
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                    text: '${line.product.price ?? ''}',
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
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              heroTag: "add1$line",
                              elevation: 0,
                              backgroundColor: ResColors.primary,
                              onPressed: () {
                                // cartViewModel.addLine(product);
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text(
                              "12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              heroTag: "minus$line",
                              elevation: 0,
                              onPressed: () {
                                // ref
                                //     .read(lineViewModelProvider(
                                //     line)
                                //     .notifier)
                                //     .updateQtnMinus();
                              },
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            const SizedBox(height: 20),
            CustomCard(
              vp: 4,
              hp: 4,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  appNavPush(
                    context,
                    page: ProductsPage(
                      onSelected: (products) {
                        ref
                            .read(orderSelectedProductsViewModel.notifier)
                            .update((state) => products);

                        ref.invalidate(orderLinesViewModel);

                        for (final item in products) {
                          ref.read(orderLinesViewModel.notifier).update(
                              (state) =>
                                  state..add(OrderLineEntity(product: item)));
                        }
                        setState(() {});
                      },
                      selectedProducts:
                          ref.watch(orderSelectedProductsViewModel),
                    ),
                  );
                },
                title: const Text("اضافة منتج"),
                leading: const Icon(Icons.menu),
                trailing: const Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            ),
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
