import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../data/demo/products.dart';
import '../../../data/demo/services_main.dart';
import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../../domain/entities/service_main/main_service_entity.dart';
import '../../custom_widgets/common/app_nav.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_checkbox.dart';
import '../../custom_widgets/common/empty_page.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/service/main_services_list_view_model.dart';
import '../../view_models/orders/service/order_service_curd_view_model.dart';
import '../order_sub_service/order_sub_service_mobile.dart';

class OrderMainServiceMobilePage extends ConsumerStatefulWidget {
  final ContractEntity? contract;
  const OrderMainServiceMobilePage({Key? key, this.contract}) : super(key: key);
  @override
  ConsumerState<OrderMainServiceMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<OrderMainServiceMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mainServicesListViewModelProvider);

    final stateRead = ref.read(mainServicesListViewModelProvider.notifier);
    return CustomAppScaffold(
      appBar: CustomAppBar(
        title: "الخدمات",
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
      body: state.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: () => const Center(
          child: AppCircularLoading(),
        ),
        empty: () => const EmptyPage(),
        error: (error) => ErrorPage(
          onReload: () => stateRead.load(),
        ),
        data: (data) => RefreshIndicator(
          onRefresh: () => stateRead.load(),
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (_, index) => Container(
              // padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  // color: const Color(0xffD8D8D8),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffD8D8D8))),
              child: _serviceWidget(data[index]),
            ),
            itemCount: data.length,
          ),
        ),
      ),
      // body: GridView.builder(
      //   padding: const EdgeInsets.symmetric(horizontal: 16),
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //     childAspectRatio: 0.9,
      //   ),
      //   itemBuilder: (_, index) => Container(
      //     // padding: const EdgeInsets.all(10),
      //     decoration: BoxDecoration(
      //         // color: const Color(0xffD8D8D8),
      //         borderRadius: BorderRadius.circular(10),
      //         border: Border.all(color: const Color(0xffD8D8D8))),
      //     child: _productWidget(getMainServices()),
      //   ),
      //   itemCount: 4,
      // ),
    );
  }

  Widget _serviceWidget(MainServiceEntity service) {
    // return Container();
    return InkWell(
      onTap: () {
        ref
            .watch(selectedMainServiceProvider.notifier)
            .update((state) => service);
        appNavPush(context, page: const OrderSubServiceMobilePage());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // AppCustomCheckBox(
              //   onPress: () {},
              //   isChecked: true,
              //   isRadio: false,
              //   size: 25,
              //   color: Colors.red,
              // ),
              Container(
                margin: const EdgeInsets.all(4),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.28999999165534973),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: const Center(
                    child: Icon(Icons.keyboard_arrow_down_outlined)),
              ),
            ],
          ),
          if (service.hasImage)
            Expanded(
              // height: 100,
              // width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  child: Image.network(
                    service.imageUrl ?? '',
                    // FakeImages.randomImage(),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          Text(
            // "service.name",
            service.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Color(0xFF555B6A),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
