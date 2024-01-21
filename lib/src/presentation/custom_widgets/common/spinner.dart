import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../common/res/colors.dart';

class Spinner extends StatelessWidget {
  final Color color;

  const Spinner({Key? key, this.color = ResColors.primary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [color],
        strokeWidth: 2,
      ),
    );
  }
}

class ScaffoldSpinner extends StatelessWidget {
  final AppBar? appBar;

  const ScaffoldSpinner({Key? key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar, body: const Center(child: Spinner()));
  }
}
