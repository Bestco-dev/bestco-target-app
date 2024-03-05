import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/gaps.dart';
import '../../../domain/entities/Invoice/Invoice_entity.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/invoices/list_view_model.dart';

class InvoicesMobilePage extends ConsumerStatefulWidget {
  const InvoicesMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<InvoicesMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<InvoicesMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(invoicesListViewModelProvider);
    final stateRead = ref.read(invoicesListViewModelProvider.notifier);
    return CustomAppScaffold(
      appBar: CustomAppBar(
        title: "الفواتير",
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
        loading: () => const AppCircularLoading(),
        data: (data) => RefreshIndicator(
          onRefresh: () => stateRead.load(),
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => _invoiceWidget(data[index]),
          ),
        ),
        error: (error) => ErrorPage(
          message: error.message,
          onReload: () => stateRead.load(),
        ),
      ),
    );
  }

  Widget _invoiceWidget(InvoiceEntity invoice) {

    return CustomCard(
      radius: 10,
      vp: 8,
      vm: 10,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
       // title: Text(invoice.),
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
    return Container(
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
    );
  }
}
