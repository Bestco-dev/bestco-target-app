import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/res/gaps.dart';
import '../../custom_widgets/common/logo.dart';
import '../../custom_widgets/common/responsive/responsive.dart';
import '../../custom_widgets/common/spinner.dart';
import '../customers/customers_mobile.dart';
import '../customers/customers_tablet.dart';
import 'join_us_mobile.dart';
import 'join_us_tablet.dart';

class JoinUsPage extends StatelessWidget {
  const JoinUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const JoinUsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const JoinUsTabletPage();
  static String pageName = 'join_us';

  // Router path.
  static String pathName = 'join_us';
}
