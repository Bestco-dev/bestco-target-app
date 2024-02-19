import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../common/utils/extensions/datetime.dart';
import '../../../data/demo/images.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/news/news_entity.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/news_view_model.dart';
import '../../view_models/salepersons/details_view_model.dart';
import '../../view_models/salepersons/list_view_model.dart';
import '../customer_curd/customer_curd.dart';
import '../saleperson_curd/saleperson_curd.dart';
import '../slaeperson_details/saleperson_details.dart';

class NewsMobilePage extends ConsumerStatefulWidget {
  const NewsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<NewsMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<NewsMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(newsListProvider);
    final stateRead = ref.read(newsListProvider.notifier);
    return CustomAppScaffold(
      appBar: CustomAppBar(
        title: "الاخبار والعروض",
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
            itemBuilder: (context, index) => _newsWidget(data[index]),
          ),
        ),
        error: (error) => ErrorPage(
          message: error.message,
          onReload: () => stateRead.load(),
        ),
      ),
    );
  }

  Widget _newsWidget(NewsEntity news) {
    return CustomCard(
      radius: 10,
      vp: 8,
      vm: 10,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Text(
              news.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
            const SizedBox(width: 10),
            Text(news.date.toTodayDisplay),
          ],
        ),
        subtitle: Column(
          children: [
            if (news.hasImage)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.grey[100],
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(FakeImages.randomImage()),
                    ),
                  ),
                ),
              ),
            if (news.hasDescription)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  news.description ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
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
