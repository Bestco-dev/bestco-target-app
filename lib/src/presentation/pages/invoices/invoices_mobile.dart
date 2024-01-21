import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/demo/invoices.dart';
import '../../../domain/entities/invoice/invoice_entity.dart';
import '../../../domain/entities/system/system.dart';
import '../../../domain/use_cases/systems/customers_view_model.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/pagination/pagination.dart';
import '../../custom_widgets/common/recordset/empty.dart';
import '../../custom_widgets/common/recordset/error_recordset.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../custom_widgets/common/spinner.dart';
import '../invoice_details/invoice_details.dart';

class InvoicesMobilePage extends ConsumerStatefulWidget {
  const InvoicesMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<InvoicesMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<InvoicesMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(systemsPaginationViewModelProvider);
    final stateRead = ref.read(systemsPaginationViewModelProvider.notifier);

    return PaginationView<SystemModel>(
      state: state,
      name: 'invoices',
      emptyWidget: const EmptyResultWidget(),
      loadingWidget: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const SystemsPlaceholder(),
      ),
      loadMoreWidget: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Spinner(),
      ),
      onLoad: () async => await stateRead.load(),
      onRefresh: () async => await stateRead.refresh(),
      errorBuilder: (message) => RecordSetErrorWidget(
        onRetry: () => stateRead.refresh(),
        errorMessage: message,
        retryText: Localization.of(context).retry,
      ),
      padding: const EdgeInsets.all(0),
      divider: const SizedBox(),
      itemBuilder: (record) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: _contract(getInvoice()),
        );
      },
    );
  }

  Widget _contract(InvoiceEntity invoice) {
    return CustomCard(
      // background: C,
      radius: 40,
      vp: 0,
      // hp: 0,
      // child: CustomerWidget(customer: customer),
      child: ListTile(
        onTap: () => context.pushNamed(
          InvoicesDetailsPage.pageName,
          extra: invoice,
          // pathParameters: {"system": system},
        ),
        contentPadding: EdgeInsets.zero,
        horizontalTitleGap: 0,
        minVerticalPadding: 0,
        leading: const Icon(Icons.inventory_outlined),
        title:  Text("INV${invoice.id}"),
        // title: Text(system.name*2),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            _active(),
            const SizedBox(width: 10),
            Text(
             invoice.date.displayDateFullYear,
            ),
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
      ),
    );
  }

  Widget _active() {
    return Container(
      height: 23,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: ShapeDecoration(
        color: const Color(0xFFD4DFEC), //Color(0xFFE0E0E0)
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0x66184E8D)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Center(
        child: Text(
          "Paid",
          style: TextStyle(
            color: Color(0xFF184E8D), //Color(0xFF3F3F3F),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
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
