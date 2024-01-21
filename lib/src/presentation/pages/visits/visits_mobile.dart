import 'package:flutter/material.dart';

import '../../../../locales/localization/l10n.dart';

class VisitsMobilePage extends StatefulWidget {
  const VisitsMobilePage({Key? key}) : super(key: key);

  @override
  State<VisitsMobilePage> createState() => _VisitsMobilePageState();
}

class _VisitsMobilePageState extends State<VisitsMobilePage> {
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(Localization.of(context).visits),
        )
      ],
    );
  }
}
