import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/res/gaps.dart';
import '../../custom_widgets/common/logo.dart';
import '../../custom_widgets/common/spinner.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white),
        child: const Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [LogoSlogan(size: 72), ResVerticalGap.gap10, Spinner()],
              ),
            ),
          ),
        ),
      );

  // Router page name.
  static String pageName = 'splashscreen';

  // Router path.
  static String pathName = '/splashscreen';
}
