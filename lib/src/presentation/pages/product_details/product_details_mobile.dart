import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/demo/images.dart';
import '../../../data/types/types_enums.dart';
import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/buttons/app_btn.dart';
import '../../custom_widgets/common/custom_info_item.dart';
import '../../custom_widgets/common/titled_text_field.dart';

class ProductDetailsMobilePage extends ConsumerStatefulWidget {
  final ProductEntity product;
  const ProductDetailsMobilePage({Key? key, required this.product})
      : super(key: key);
  @override
  ConsumerState<ProductDetailsMobilePage> createState() =>
      _CheckMobilePageState();
}

class _CheckMobilePageState extends ConsumerState<ProductDetailsMobilePage> {
  late ProductEntity product;
  @override
  void initState() {
    product = widget.product;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            // color: Colors.grey[200],
            child: Image.network(
              FakeImages.randomImage(),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          CustomInfoItem(
              title: "نوع المنتج", info: product.type.name, isBold: true),
          CustomInfoItem(
              title: "القسم", info: product.department, isBold: true),

          // CustomInfoItem(title: "رقم المنتح", info: "979347", isBold: true),
          (product.type.isConsumable)
              ? CustomInfoIWidgetItem(
                  title: "السعر",
                  info: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                )
              : const SizedBox(),
          // const SizedBox(height: 40)
          TitledTextField(
            title: "الوصف",
            child: Text(
              product.description ?? '',
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              // height: 70,
              color: Colors.white,
              child: AppBtn(
                text: "اضافة طلب",
                onPressed: () {},
              )),
          const SizedBox(height: 40),
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
          // const SizedBox(height: 10),

        ],
      ),
    );
  }
}
