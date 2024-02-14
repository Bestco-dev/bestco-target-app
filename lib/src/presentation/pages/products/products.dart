import 'package:flutter/material.dart';

import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'products_mobile.dart';
import 'products_tablet.dart';

class ProductsPage extends StatelessWidget implements IResponsiveUIState {
  final List<ProductEntity>? selectedProducts;
  Function(List<ProductEntity>)? onSelected;

  ProductsPage({Key? key, this.onSelected, this.selectedProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      ProductsMobilePage(
        onSelected: onSelected,
        selectedProducts: selectedProducts,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ProductsTabletPage();

  static String pageName = 'products';
}
