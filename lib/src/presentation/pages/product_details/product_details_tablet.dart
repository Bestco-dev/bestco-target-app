import 'package:flutter/material.dart';

import '../../../domain/entities/product/product_entity.dart';

class ProductDetailsTabletPage extends StatefulWidget {
  final ProductEntity product;
  const ProductDetailsTabletPage({required this.product,Key? key}) : super(key: key);
  @override
  State<ProductDetailsTabletPage> createState() => _ProductDetailsTabletPageState();
}

class _ProductDetailsTabletPageState extends State<ProductDetailsTabletPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('details');
  }
}
