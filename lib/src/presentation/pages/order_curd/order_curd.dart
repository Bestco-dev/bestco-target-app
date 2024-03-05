import 'package:flutter/material.dart';

import '../../../domain/entities/order/order_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_curd_mobile.dart';
import 'order_curd_tablet.dart';

class OrderCurdPage extends StatelessWidget implements IResponsiveUIState {
  final OrderEntity? order;
  const OrderCurdPage({Key? key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      OrderCurdMobilePage(
        order: order,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      OrderCurdTabletPage(order: order);

  static String pageName = 'order_curd';
}
