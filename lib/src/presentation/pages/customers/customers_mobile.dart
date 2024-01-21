import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';
import '../../../domain/entities/system/system.dart';
import '../../../domain/use_cases/systems/customers_view_model.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/pagination/pagination.dart';
import '../../custom_widgets/common/recordset/empty.dart';
import '../../custom_widgets/common/recordset/error_recordset.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../custom_widgets/common/spinner.dart';
import '../customer_curd/customer_curd.dart';
import '../customer_details/customer_details.dart';

class CustomersMobilePage extends ConsumerStatefulWidget {
  const CustomersMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<CustomersMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CustomersMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(systemsPaginationViewModelProvider);
    final stateRead = ref.read(systemsPaginationViewModelProvider.notifier);

    return CustomAppScaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: AppBtn(
          text: "اضافة عميل",
          icon: Icons.add,
          onPressed: () {
            CustomModalSheet.showModalSheet(
              context,
              title: "ملعومات العميل",
              child: const CustomerCurdPage(),
              height: context.height * .90,
            );
            return;
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: const Color(0xfff7f7f7),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (_) {
                return SizedBox(
                  height: context.height * 7,
                  // child:  Container(),
                  child: const CustomerCurdPage(),
                );
              },
            );
            // context.goNamed(CustomerCurdPage.pageName);
          },
        ),
      ),
      appBar: CustomAppBar(
        title: "العملاء",
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
      body: PaginationView<SystemModel>(
        state: state,
        name: 'customers',
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
        // padding: const EdgeInsets.all(16),
        divider: const SizedBox(),
        itemBuilder: (record) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: _customerWidget(),
            // child: SystemWidget(system: record),
          );
        },
      ),
    );
  }

  Widget _customerWidget() {
    return CustomCard(
      radius: 10,
      vp: 0,
      child: ListTile(
        onTap: () => context.goNamed(CustomerDetailsPage.pageName),
        contentPadding: EdgeInsets.zero,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white70,
            border: Border.all(
              width: 1,
              color: const Color(0xffe8e8e8),
            ),
          ),
          child: ClipOval(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: FakeImages.randomImage(isUser: true),
            ),
          ),
        ),
        title: const Text(
          'خالد محمد',
          style: TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text(
              '3.5',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF555B6A),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
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
