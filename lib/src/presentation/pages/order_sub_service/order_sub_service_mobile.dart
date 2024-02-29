import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/services_sub.dart';
import '../../../domain/entities/contract/contract_entity.dart';
import '../../../domain/entities/service_sub/sub_service.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/empty_page.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/titled_text_field.dart';
import '../../view_models/orders/service/main_services_list_view_model.dart';
import '../../view_models/orders/service/order_service_curd_view_model.dart';
import '../../view_models/orders/service/sub_services_list_view_model.dart';
import '../order_service_curd/order_service_curd.dart';
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
    final state = ref.watch(subServicesListViewModelProvider);

    final stateRead = ref.read(subServicesListViewModelProvider.notifier);
    return CustomAppScaffold(
      hasPadding: false,
      appBar: CustomAppBar(
        title: ref.watch(selectedMainServiceProvider)?.name,
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
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) => _subService(data[index]),
            itemCount: data.length,
          ),
        ),
      ),
    );
  }

  Widget _subService(SubServiceEntity service) {
    return GestureDetector(
      onTap: () {
        ref
            .watch(selectedSubServiceProvider.notifier)
            .update((state) => service);

        print("changed.... ${service.id}");

        ref
            .watch(subServiceQuestionsProvider.notifier)
            .update((state) => service.questions);

        CustomModalSheet.showModalSheet(
          context,
          title: service.name,
          hasMarginBottom: false,
          child: OrderServiceCurdPage(subService: service),
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
        child: ListTile(
          title: Text(service.name),
          trailing: const Icon(Icons.circle_outlined, color: Colors.black26),
        ),
      ),
    );
  }
}
