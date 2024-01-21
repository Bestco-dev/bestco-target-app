import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class Logo extends StatelessWidget {
  final double size;
  final bool background;
  const Logo({Key? key, required this.size, this.background = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asset = background ? Assets.logoLogo : Assets.logoLogo;
    return SizedBox(width: size, height: size, child: Image.asset(asset));
  }
}
class LogoSlogan extends StatelessWidget {
  final double size;
  const LogoSlogan({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(width: size, height: size, child: Image.asset(Assets.logoLogoName));
  }
}
