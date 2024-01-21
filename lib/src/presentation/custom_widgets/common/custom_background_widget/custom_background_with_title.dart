import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomBackgroundWithTitleWidget extends StatelessWidget {
  final Widget body;
  final Widget? title;
  final bool isGrad;
  const CustomBackgroundWithTitleWidget(
      {required this.body, this.isGrad = false, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: const Color(0xFFC9D4E1),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.21, 0.98),
              end: Alignment(-0.21, -0.98),
              colors: [Color(0xFF1156A9), Color(0xFF184E8D), Color(0xFF192B6B)],
            ),
          ),
          child: Column(
            children: [
              // const SizedBox(height: 10),
              if (title != null)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: title ?? const SizedBox(),
                ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Colors.white,
                        Color(0xFFEBEBEB),
                        Color(0xFFC9D4E1)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  child: body,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
