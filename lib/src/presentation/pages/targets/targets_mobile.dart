import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../common/utils/extensions/numbers.dart';
import '../../../domain/entities/target/target_entity.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/targets/list_view_model.dart';

class TargetsMobilePage extends ConsumerStatefulWidget {
  const TargetsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<TargetsMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<TargetsMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(targetsListViewModelProvider);
    final stateRead = ref.read(targetsListViewModelProvider.notifier);
    return CustomAppScaffold(
      appBar: CustomAppBar(
        title: "المستهدفات",
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
            itemBuilder: (context, index) => _targetWidget(data[index]),
          ),
        ),
        error: (error) => ErrorPage(
          message: error.message,
          onReload: () => stateRead.load(),
        ),
      ),
    );
  }

  Widget _targetWidget(TargetEntity target) {
    return CustomCard(
      radius: 10,
      vp: 8,
      vm: 10,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTag(
              info: target.isActive ? "نشطة" : "مكتملة",
              color: target.isActive?Colors.green:Colors.black,
            ),
            Text(target.getDate.display3),
          ],
        ),
        subtitle: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Expanded(
                        child: Text("المستهدف/ر.س"),
                      ),
                      CustomTag(info: target.target.toPriceFormat),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text("المحقق/ر.س"),
                      ),
                      CustomTag(
                        info: target.achieved.toPriceFormat,
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text("العمولة/ر.س"),
                      ),
                      CustomTag(
                        info: target.commission.toPriceFormat,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
