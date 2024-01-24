import 'package:flutter/material.dart';

import '../../../domain/entities/product/product_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'product_details_mobile.dart';
import 'product_details_tablet.dart';

class ProductDetailsPage extends StatelessWidget implements IResponsiveUIState {

  final ProductEntity product;
  const ProductDetailsPage({Key? key,required  this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
       ProductDetailsMobilePage(product: product);

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
       ProductDetailsTabletPage(product: product,);

  static String pageName = 'product_details';
}
