import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_service_curd_mobile.dart';
import 'order_service_curd_tablet.dart';

class OrderServiceCurdPage extends StatelessWidget implements IResponsiveUIState {
  final ContractEntity? contract;
  const OrderServiceCurdPage({Key? key, this.contract}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      OrderServiceCurdMobilePage(
        contract: contract,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      OrderServiceCurdTabletPage(contract: contract);

  static String pageName = 'order_service_curd';
}