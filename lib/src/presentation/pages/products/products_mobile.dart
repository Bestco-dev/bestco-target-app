import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/res/gaps.dart';
import '../../../common/utils/extensions/context.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/cicular_loading.dart';
import '../../custom_widgets/common/custom_ modal_sheet.dart';
import '../../custom_widgets/common/custom_app_bar.dart';
import '../../custom_widgets/common/custom_app_scaffold.dart';
import '../../custom_widgets/common/error_pagae.dart';
import '../../custom_widgets/common/shimmer_tile.dart';
import '../../view_models/products/list_view_model.dart';
import '../product_details/product_details.dart';

class ProductsMobilePage extends ConsumerStatefulWidget {
  const ProductsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<ProductsMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<ProductsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
      appBar: CustomAppBar(
        title: "المنتجات",
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
        // subTitle: AppBtn(text: "Testing"),
      ),
      hasPadding: false,
      body: ref.watch(productsListViewModelProvider).maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const AppCircularLoading(),
            data: (products) => RefreshIndicator(
              onRefresh: () =>
                  ref.read(productsListViewModelProvider.notifier).load(),
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (_, index) => Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      // color: const Color(0xffD8D8D8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffD8D8D8))),
                  child: _productWidget(products[index]),
                ),
                itemCount: products.length,
              ),
            ),
            error: (error) => ErrorPage(
              message: error.message,
              onReload: () =>
                  ref.read(productsListViewModelProvider.notifier).load(),
            ),
          ),
    );
  }

  Widget _productWidget(ProductEntity product) {
    return InkWell(
      onTap: () {
        CustomModalSheet.showModalSheet(
          context,
          title: "اسم المنتج",
          hasMarginBottom: false,
          child: ProductDetailsPage(product: product),
          height: context.height * .90,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              product.type.isConsumable
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF50B663),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                          children: [
                            TextSpan(
                              text: '${product.price ?? ''}',
                            ),
                            const TextSpan(text: ' '),
                            const TextSpan(
                              text: 'ر.س',
                            ),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              Container(
                // padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.28999999165534973),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: const Center(
                    child: Icon(Icons.keyboard_arrow_down_outlined)),
              ),
            ],
          ),
          Text(
            product.name,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF555B6A),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              height: 0,
            ),
          ),
        ],
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
