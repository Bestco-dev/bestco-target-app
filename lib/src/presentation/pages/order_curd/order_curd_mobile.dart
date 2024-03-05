import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/colors.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_line/order_line_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/app_nav.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/select_customer.dart';
import '../../view_models/orders/line_view_model.dart';
import '../../view_models/orders/order_curd_view_model.dart';
import '../../view_models/orders/selected_customer.dart';
import '../products/products.dart';

class OrderCurdMobilePage extends ConsumerStatefulWidget {
  final OrderEntity? order; //order
  const OrderCurdMobilePage({Key? key, this.order}) : super(key: key);
  @override
  ConsumerState<OrderCurdMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderCurdMobilePage> {
  @override
  Widget build(BuildContext context) {
    final orderViewModel = ref.watch(orderViewModelProvider(widget.order));
    final orderViewModelRead =
        ref.read(orderViewModelProvider(widget.order).notifier);
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
                // orderViewModelRead.updateOrderCustomer(customer);
                orderViewModelRead.updateOrderCustomer(customer);
              },
              customer: orderViewModel.customer,
            ),
            const SizedBox(height: 20),
            ...orderViewModel.lines.map(
              (item) {
                OrderLineEntity line2 =
                    orderViewModelRead.getLine(item.product);
                final lineViewModel = ref.watch(lineViewModelProvider(line2));
                final lineViewModelRead =
                    ref.read(lineViewModelProvider(line2).notifier);

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
                                  text: '${lineViewModel.product.price ?? ''}',
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
                    subtitle: Text(lineViewModel.product.name),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            heroTag: "add1$lineViewModel",
                            elevation: 0,
                            backgroundColor: ResColors.primary,
                            onPressed: () {
                              lineViewModelRead.updateQtnPlus();
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            "${lineViewModel.qtn}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        const SizedBox(width: 10),
                        !lineViewModelRead.canBeDelete
                            ? SizedBox(
                                width: 30,
                                height: 30,
                                child: FloatingActionButton(
                                  heroTag: "minus$lineViewModel",
                                  elevation: 0,
                                  onPressed: () {
                                    lineViewModelRead.updateQtnMinus();
                                  },
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : _removeButton(item.product),
                      ],
                    ),
                  ),
                );
              },
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
                        for (final product in products) {
                          orderViewModelRead.addLine(product);
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
            const SizedBox(height: 20),
            if (orderViewModelRead.hasLines)
              AppBtn(
                text: "حفظ",
                onPressed: () async {
                  final bool check = await orderViewModelRead.confirmOrder();
                  if (check) {
                    print("done ...");
                    if (mounted) Navigator.pop(context);
                  }
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _removeButton(ProductEntity product) {
    final cartViewModel =
        ref.watch(orderViewModelProvider(widget.order).notifier);
    return SizedBox(
      width: 30,
      height: 30,
      child: FloatingActionButton(
        heroTag: "delete${product.id}",
        backgroundColor: Colors.red,
        elevation: 1,
        onPressed: () {
          cartViewModel.removeLine(product);
        },
        child: const Icon(
          Icons.delete_forever,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
