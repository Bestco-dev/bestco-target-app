import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/salseperson/saleperson_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/salepersons/details_view_model.dart';
import '../../view_models/salepersons/list_view_model.dart';
import '../customer_curd/customer_curd.dart';
import '../slaeperson_details/saleperson_details.dart';

class SalePersonsMobilePage extends ConsumerStatefulWidget {
  const SalePersonsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<SalePersonsMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<SalePersonsMobilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(salepersonListViewModelProvider);
    final stateRead = ref.read(salepersonListViewModelProvider.notifier);
    return CustomAppScaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: AppBtn(
          text: "اضافة مندوب",
          icon: Icons.add,
          onPressed: () {
            CustomModalSheet.showModalSheet(
              context,
              title: "ملعومات المندوب",
              child: const CustomerCurdPage(),
              height: context.height * .90,
            );
            return;
          },
        ),
      ),
      appBar: CustomAppBar(
        title: "المناديب",
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
            itemBuilder: (context, index) => _salepersonWidget(data[index]),
          ),
        ),
      ),
    );
  }

  Widget _salepersonWidget(SalePersonEntity saleperson) {
    return CustomCard(
      radius: 10,
      vp: 8,
      vm: 10,
      child: ListTile(
        onTap: () =>
            context.goNamed(SalePersonDetailsPage.pageName, extra: saleperson),
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
        title: Text(
          saleperson.name,
          style: const TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTag(
              info: saleperson.status.label,
              color: const Color(0xFF50B663),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
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
