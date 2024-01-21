import 'package:flutter/material.dart';

import '../../../domain/entities/contract/contract_entity.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import 'saleperson_curd_mobile.dart';
import 'saleperson_curd_tablet.dart';

class SalePersonCurdPage extends StatelessWidget implements IResponsiveUIState {
  final ContractEntity? contract;
  const SalePersonCurdPage({Key? key, this.contract}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      SalePersonCurdMobilePage(
        contract: contract,
      );

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      SalePersonCurdTabletPage(contract: contract);

  static String pageName = 'salePerson_curd';
}
