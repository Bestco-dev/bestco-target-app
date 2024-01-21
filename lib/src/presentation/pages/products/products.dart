import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'products_mobile.dart';
import 'products_tablet.dart';

class ProductsPage extends StatelessWidget implements IResponsiveUIState {

  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const ProductsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const ProductsTabletPage();

  static String pageName = 'products';
}
