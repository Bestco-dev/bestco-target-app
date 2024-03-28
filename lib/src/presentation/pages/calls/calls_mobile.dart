import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../domain/entities/visits/visits_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/visits/list_view_model.dart';

class CallsMobilePage extends ConsumerStatefulWidget {
  const CallsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<CallsMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CallsMobilePage> {
  int selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(visitsListViewModelProvider);
    final stateRead = ref.read(visitsListViewModelProvider.notifier);
    return CustomAppScaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10),
          child: AppBtn(
            text: "اضافة إتصال",
            icon: Icons.add,
            onPressed: () {
              // CustomModalSheet.showModalSheet(
              // context,
              // title: "ملعومات المندوب",
              // child: const SalePersonCurdPage(),
              // height: context.height * .90,
              // );
              return;
            },
          ),
        ),
        appBar: CustomAppBar(
          title: "الإتصالات",
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
        body: Column(
          children: [
            // _taps(),
            // const SizedBox(height: 10),
            Expanded(
              child: state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: () => const AppCircularLoading(),
                data: (data) => RefreshIndicator(
                  onRefresh: () => stateRead.load(),
                  child: ListView.builder(
                    itemCount: data.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => _newsWidget(data[index]),
                  ),
                ),
                error: (error) => ErrorPage(
                  message: error.message,
                  onReload: () => stateRead.load(),
                ),
              ),
            )
          ],
        ));
  }

  Widget _newsWidget(VisitEntity visit) {
    return Stack(
      children: [
        CustomCard(
          radius: 10,
          vp: 8,
          vm: 10,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(visit.customer?.name??''),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(width: .1, color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.edit_outlined,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Column(
              children: [
                const SizedBox(height: 8),
                Text(visit.description),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text(
                      "اتصال"
                    ))
                  ],
                )
              ],
            ),
            // trailing:
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                visit.date?.toTodayDisplay??'',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Container(height: 20, width: 2, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                visit.date?.displayTime??'',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
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
