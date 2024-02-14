import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'order_sub_service_mobile.dart';
import 'order_sub_service_tablet.dart';

class OrderSubServicePage extends StatelessWidget implements IResponsiveUIState {
  final ContractEntity? contract;
  const OrderSubServicePage({Key? key, this.contract}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      OrderSubServiceMobilePage(
        contract: contract,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      OrderSubServiceTabletPage(contract: contract);

  static String pageName = 'order_service_curd';
}
