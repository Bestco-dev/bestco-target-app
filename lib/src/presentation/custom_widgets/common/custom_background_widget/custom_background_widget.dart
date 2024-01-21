import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/utils/extensions/context.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final Widget child;
  final bool isGrad;
  const CustomBackgroundWidget(
      {required this.child, this.isGrad = false, super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xFF1156A9),
      ),
      child: SizedBox(
        height: context.height,
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.21, 0.98),
              end: Alignment(-0.21, -0.98),
              colors: [Color(0xFF1156A9), Color(0xFF184E8D), Color(0xFF192B6B)],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
