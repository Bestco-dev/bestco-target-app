import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_main_service_mobile.dart';
import 'order_main_service_tablet.dart';

class OrderMainServicePage extends StatelessWidget implements IResponsiveUIState {
  final ContractEntity? contract;
  const OrderMainServicePage({Key? key, this.contract}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      OrderMainServiceMobilePage(
        contract: contract,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      OrderMainServiceTabletPage(contract: contract);

  static String pageName = 'order_service_curd';
}
