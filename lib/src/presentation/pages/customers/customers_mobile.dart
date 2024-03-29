import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../domain/entities/customer/customer.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/card.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/empty_page.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/images/transparent_image.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/customers/list_view_model.dart';
import '../customer_curd/customer_curd.dart';
import '../customer_details/customer_details.dart';

class CustomersMobilePage extends ConsumerStatefulWidget {
  final CustomerEntity? selectedCustomer;
  Function(CustomerEntity)? onSelected;
  CustomersMobilePage({Key? key, this.selectedCustomer, this.onSelected})
      : super(key: key);
  @override
  ConsumerState<CustomersMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<CustomersMobilePage> {
  late CustomerEntity? selectedCustomer;
  @override
  void initState() {
    super.initState();
     selectedCustomer = widget.selectedCustomer;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(customersListViewModelProvider);
    final stateRead = ref.read(customersListViewModelProvider.notifier);
    return CustomAppScaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          // mainAxisAlignment: Ma,
          children: [
            Expanded(
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
                },
              ),
            ),
            if (widget.onSelected != null)
              Expanded(
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 5),
                    Expanded(
                      child: AppBtn(
                        text: "اختيار",
                        backgroundColor: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ],
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
      body: state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const CustomersPlaceholder(),
          data: (data) => RefreshIndicator(
                onRefresh: () => stateRead.load(),
                child: ListView.builder(
                  itemCount: data.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => _customerWidget(data[index]),
                ),
              ),
          error: (error) => ErrorPage(
                message: error.message,
                onReload: () => stateRead.load(),
              ),
          empty: () => EmptyPage(
                onRefresh: () => stateRead.load(),
              )),
    );
  }

  Widget _customerWidget(CustomerEntity customer) {
    return CustomCard(
      radius: 10,
      vp: 0,
      vm: 8,
      child: ListTile(
        onTap: () {
          if (widget.onSelected != null) {
            if (widget.onSelected != null) {
              widget.onSelected!(customer);
              selectedCustomer=customer;
              setState(() {});
            }
            return;
          }
          context.goNamed(CustomerDetailsPage.pageName, extra: customer);
        },
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
          child:
              widget.onSelected != null && selectedCustomer?.id == customer.id
                  ? Container(
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : ClipOval(
                      child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: customer.imgUrl ?? '',
                    )),
        ),
        title: Text(
          customer.name,
          style: const TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star, color: Colors.yellow),
            Text(
              "${customer.rate}",
              textAlign: TextAlign.center,
              style: const TextStyle(
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

class CustomersPlaceholder extends StatelessWidget {
  final double hPadding;
  const CustomersPlaceholder({
    Key? key,
    this.hPadding = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...List.generate(
          10,
          (index) => Container(
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
          ),
        ),
      ],
    );
  }
}
