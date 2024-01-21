import 'package:flutter/material.dart';

import 'custom_curve_edgets.dart';

class CustomAppScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? body;
  final bool isScroll;
  final Widget? floatingActionButton;
  final bool hasPadding;
  const CustomAppScaffold(
      {super.key,
      this.appBar,
      this.isScroll = false,
      this.hasPadding = true,
      this.body,
      this.floatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: floatingActionButton,
      body: isScroll ? _scroll() : _normal(),
    );
  }

  Widget _normal() {
    return Column(
      children: [
        _header(),
        Expanded(
          child: _body(hasPadding: hasPadding),
        ),
      ],
    );
  }

  Widget _scroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _header(),
          _body(hasPadding: hasPadding),
        ],
      ),
    );
  }

  Widget _header() {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [Color(0xFF070873), Color(0xFF07BBFA)],
          ),
        ),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                  right: 16, left: 16, top: 4, bottom: 30),
              child: appBar ?? const SizedBox()),
        ),
      ),
    );
  }

  Widget _body({bool hasPadding = true}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hasPadding ? 16 : 0),
      child: body ?? const SizedBox(),
    );
  }
}
