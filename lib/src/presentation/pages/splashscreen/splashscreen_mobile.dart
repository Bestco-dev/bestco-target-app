import 'package:flutter/material.dart';

import '../../../common/res/colors.dart';
import '../../custom_widgets/common/spinner.dart';

class SplashscreenMobilePage extends StatefulWidget {
  const SplashscreenMobilePage({Key? key}) : super(key: key);

  @override
  State<SplashscreenMobilePage> createState() => _SplashscreenMobilePageState();
}

class _SplashscreenMobilePageState extends State<SplashscreenMobilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ResColors.primary,
      body: Center(
        child: Spinner(color: Colors.white),
      ),
    );
  }
}
