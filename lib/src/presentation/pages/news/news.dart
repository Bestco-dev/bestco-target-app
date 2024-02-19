import 'package:flutter/material.dart';

import '../../custom_widgets/common/responsive/responsive.dart';
import 'news_mobile.dart';
import 'news_tablet.dart';

class NewsPage extends StatelessWidget implements IResponsiveUIState {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ResponsiveFullSizeUIBuilder(
          mobileUIBuilder: buildMobileUI,
          tabletUIBuilder: buildMobileUI,
        ),
      );

  @override
  Widget buildMobileUI(BuildContext context, DeviceType deviceType) =>
      const NewsMobilePage();

  @override
  Widget buildTabletUI(BuildContext context, DeviceType deviceType) =>
      const NewsTabletPage();

  static String pageName = 'news';
}
