import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/order/order_entity.dart';
import '../../../domain/entities/order_services/order_service_entity.dart';
import '../../custom_widgets/common/add_new.dart';
import '../../custom_widgets/common/app_nav.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/empty_page.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/orders/orders_products_list_view_model.dart';
import '../../view_models/orders/service/orders_service_list_view_model.dart';
import '../order_curd/order_curd.dart';
import '../order_details/order_details.dart';
import '../order_mainـservice/order_main_service.dart';
import '../order_service_details/order_service_details.dart';

class OrdersMobilePage extends ConsumerStatefulWidget {
  const OrdersMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<OrdersMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrdersMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      hasPadding: false,
      appBar: CustomAppBar(
        title: "الطلبات",
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
      body: const OrdersListWidget(),
    );
  }
}

class OrdersListWidget extends ConsumerStatefulWidget {
  final bool canAddNew;
  final int? salepersonId;
  const OrdersListWidget({super.key, this.canAddNew = true, this.salepersonId});

  @override
  ConsumerState<OrdersListWidget> createState() => _OrdersListWidgetState();
}

class _OrdersListWidgetState extends ConsumerState<OrdersListWidget> {
  List<KeyValueOptionEntity> tags = [];
  int selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.canAddNew)
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AddNewBtn(
              label: "اضافة طلب",
              onPress: () {
                CustomModalSheet.showModalSheet(
                  context,
                  title: "نوع الطلب",
                  child: Column(
                    children: [
                      ColoredBox(
                        color: Colors.white,
                        child: ListTile(
                          title: const Text("طلب منتج"),
                          trailing: const Icon(Icons.add),
                          onTap: () {
                            Navigator.pop(context);
                            context.goNamed(OrderCurdPage.pageName);
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      ColoredBox(
                        color: Colors.white,
                        child: ListTile(
                          title: const Text("طلب خدمة"),
                          trailing: const Icon(Icons.add),
                          onTap: () {
                            Navigator.pop(context);
                            appNavPush(
                              context,
                              page: const OrderMainServicePage(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  height: context.height * .3,
                );
              },
            ),
          ),
        _taps(),
        Expanded(
            child: selectedTap == 0 ? _serviceOrders() : _productsOrders()),
      ],
    );
  }

  Widget _productsOrders() {
    final state =
        ref.watch(ordersProductsListViewModelProvider(widget.salepersonId));

    final stateRead = ref.read(
        ordersProductsListViewModelProvider(widget.salepersonId).notifier);
    return state.maybeWhen(
      orElse: () => const SizedBox.shrink(),
      loading: () => const SystemsPlaceholder(),
      empty: () => const EmptyPage(),
      error: (error) => ErrorPage(
        onReload: () => stateRead.load(),
      ),
      data: (data) => RefreshIndicator(
        onRefresh: () => stateRead.load(),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: data.length,
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          // itemBuilder: (context, index) => Container(
          itemBuilder: (context, index) => _orderProductWidget(data[index]),
        ),
      ),
    );
  }

  Widget _serviceOrders() {
    final state =
        ref.watch(ordersServicesListViewModelProvider(widget.salepersonId));

    final stateRead = ref.read(
        ordersServicesListViewModelProvider(widget.salepersonId).notifier);

    return state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: () => const SystemsPlaceholder(),
        empty: () => const EmptyPage(),
        error: (error) => ErrorPage(
              onReload: () => stateRead.load(),
            ),
        data: (data) {
          data = _filteredData(data);
          return RefreshIndicator(
            onRefresh: () => stateRead.load(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: _typeFitter(),
                  ),
                  // const SizedBox(height: 16),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemCount: data.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return _orderServiceWidget(data[index]);
                      }),
                ],
              ),
            ),
          );
        });
  }

  List<OrderServiceEntity> _filteredData(List<OrderServiceEntity> data) {
    if (tags.isEmpty) return data;
    List<OrderServiceEntity> filtered = [];
    List<String> tagsKeys = tags.map((e) => e.key.toString()).toList();
    for (final item in data) {
      if (tagsKeys.contains(item.mainService.type.name)) {
        filtered.add(item);
      }
    }
    return filtered;
  }

  Widget _taps() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Row(
        children: [
          Expanded(child: _tapItem(label: "الخدمات", index: 0)),
          // const SizedBox()
          Expanded(child: _tapItem(label: "المنتجات", index: 1)),
        ],
      ),
    );
  }

  Widget _tapItem({required String label, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTap = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: index == selectedTap ? Colors.blue : Colors.blue[100],
          // borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: index == selectedTap ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget _typeFitter() {
    return ChipsChoice<KeyValueOptionEntity>.multiple(
      value: tags,
      onChanged: (val) => setState(() => tags = val),
      choiceItems:
          C2Choice.listFrom<KeyValueOptionEntity, KeyValueOptionEntity>(
        source: [
          const KeyValueOptionEntity(key: 'finance', value: 'طلبات التمويل'),
          const KeyValueOptionEntity(key: 'marking', value: 'طلبات التسويق'),
          const KeyValueOptionEntity(key: 'cleaning', value: 'طلبات النظافة'),
          const KeyValueOptionEntity(
              key: 'health', value: 'بطاقة الرعاية الصحية'),
          const KeyValueOptionEntity(
              key: 'digital', value: 'طلبات الانظمة الرقيمة'),
          const KeyValueOptionEntity(key: 'consult', value: 'طلبات الاستشارة'),
          const KeyValueOptionEntity(key: 'other', value: 'طلبات اخرى'),
        ],
        value: (i, v) => v,
        label: (i, v) => v.value ?? '',
        tooltip: (i, v) => v.value ?? '',
      ),
      choiceCheckmark: true,
      // choiceStyle: C2ChipStyle.outlined(),
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

  Widget _orderServiceWidget(OrderServiceEntity order) {
    // print(order.mainService.type.name);
    return CustomCard(
      radius: 10,
      vp: 10,
      vm: 10,
      child: ListTile(
        onTap: () {
          ref
              .watch(selectedServiceOrderViewModel.notifier)
              .update((state) => order);
          appNavPush(context, page: const OrderServiceDetailsPage());
        },
        contentPadding: EdgeInsets.zero,
        title: Text(
          order.subService.name,
          style: const TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              order.customer?.name ?? '',
              style: const TextStyle(
                color: Color(0xFF555B6A),
                fontSize: 14,
                // fontWeight: FontWeight.bold,
              ),
            ),
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     Text(
            //       order.date.toTodayDisplay,
            //       textAlign: TextAlign.center,
            //       style: const TextStyle(
            //         color: Color(0xFF555B6A),
            //         fontSize: 13,
            //         fontWeight: FontWeight.w400,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
        trailing: Text(
          order.date.toTodayDisplay,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        // trailing: const Row(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     CustomTag(info: "مؤكدة", color: Colors.blueAccent),
        //     SizedBox(width: 5),
        //     Icon(Icons.arrow_forward_ios, color: Colors.black),
        //   ],
        // ),
      ),
    );
  }

  Widget _orderProductWidget(OrderEntity order) {
    return CustomCard(
      radius: 10,
      vp: 10,
      vm: 10,
      child: ListTile(
        onTap: () {
          ref
              .watch(selectedProductOrderViewModel.notifier)
              .update((state) => order);
          appNavPush(context, page: const OrderDetailsPage());
        },
        contentPadding: EdgeInsets.zero,
        title:  Text(
            "#${order.name}",
          // 'طلب شراء منتجات',
          style: const TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   order.name,
            //   style: const TextStyle(
            //     color: Color(0xFF555B6A),
            //     fontSize: 15,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            Text(
              order.customer?.name ?? '',
              style: const TextStyle(
                color: Color(0xFF555B6A),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  order.date.toTodayDisplay,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF555B6A),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTag(info: order.state.label, color: order.state.color),
            const SizedBox(width: 5),
            const Icon(Icons.arrow_forward_ios, color: Colors.black),
          ],
        ),
      ),
    );
  }
}

class SystemsPlaceholder extends StatelessWidget {
  final double hPadding;
  const SystemsPlaceholder({
    Key? key,
    this.hPadding = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            5,
            (index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                // border: Border.all(color: Colors.grey[300]!, width: 1)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RoundedSkeleton(width: 46, height: 46),
                  ResHorizontalGap.gap05,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RoundedSkeleton(width: 100, height: 20),
                        ResVerticalGap.gap03,
                        RoundedSkeleton(width: 200, height: 26),
                      ],
                    ),
                  ),
                  RoundedSkeleton(width: 20, height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
