import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'product_details_mobile.dart';
import 'product_details_tablet.dart';

class ProductDetailsPage extends StatelessWidget implements IResponsiveUIState {

  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const ProductDetailsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ProductDetailsTabletPage();

  static String pageName = 'product_details';
}
