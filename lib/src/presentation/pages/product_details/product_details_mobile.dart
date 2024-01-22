import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/demo/images.dart';
import '../../custom_widgets/common/custom_info_item.dart';

class ProductDetailsMobilePage extends ConsumerStatefulWidget {
  const ProductDetailsMobilePage({Key? key}) : super(key: key);
  @override
  ConsumerState<ProductDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<ProductDetailsMobilePage> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 220,
            // color: Colors.grey[200],
            child: Image.network(
              FakeImages.randomImage(),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          CustomInfoItem(title: "نوع المنتج", info: "خدمة", isBold: true),
          CustomInfoItem(title: "القسم", info: "قسم التسويق", isBold: true),
          CustomInfoItem(title: "رقم المنتح", info: "979347", isBold: true),
          CustomInfoIWidgetItem(
            title: "السعر",
            info: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: ShapeDecoration(
                color: const Color(0xFF50B663),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text.rich(
                TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                  children: [
                    TextSpan(
                      text: '200',
                    ),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: 'ر.س',
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const SizedBox(height: 40
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.grey[50],
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
