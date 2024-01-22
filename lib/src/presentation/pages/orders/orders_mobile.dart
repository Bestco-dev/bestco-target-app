import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/res/gaps.dart';
import '../../custom_widgets/common/add_new.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/custom_tag.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../order_details/order_details.dart';

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
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: AppBtn(
      //     text: "اضافة طلب",
      //     icon: Icons.add,
      //     onPressed: () {
      //       // CustomModalSheet.showModalSheet(
      //       //   context,
      //       //   title: "ملعومات العميل",
      //       //   child: const CustomerCurdPage(),
      //       //   height: context.height * .90,
      //       // );
      //       return;
      //     },
      //   ),
      // ),
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

class OrdersListWidget extends StatefulWidget {
  final bool canAddNew;
  const OrdersListWidget({super.key,this.canAddNew=true});

  @override
  State<OrdersListWidget> createState() => _OrdersListWidgetState();
}

class _OrdersListWidgetState extends State<OrdersListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         if(widget.canAddNew) Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AddNewBtn(
              label: "اضافة طلب",
              onPress: () {},
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            // color: Colors.grey,
            child: ListView.builder(
              itemCount: 10,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomSelectionTag(
                    info: "طلب بطاقة رعاية صحية",
                    isSelected: index == 1,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // itemBuilder: (context, index) => Container(
            //   padding: EdgeInsets.all(10),
            //   color: Colors.blueAccent,
            // ),
            itemBuilder: (context, index) => _orderWidget(),
          ),
        ],
      ),
    );
  }

  Widget _orderWidget() {
    return CustomCard(
      radius: 10,
      vp: 0,
      vm: 10,
      child: ListTile(
        onTap: () => context.goNamed(OrderDetailsPage.pageName),
        contentPadding: EdgeInsets.zero,
        title: const Text(
          'طلب شراء منتج',
          style: TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '05-15-2024',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF555B6A),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTag(info: "مؤكدة", color: Colors.blueAccent),
            SizedBox(width: 5),
            Icon(Icons.arrow_forward_ios, color: Colors.black),
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
