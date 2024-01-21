import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../common/res/colors.dart';
import '../../../common/utils/extensions/context.dart';

class AppCircularLoading extends StatelessWidget {
  final double? size;
  final double? width;

  const AppCircularLoading({Key? key, this.size,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitDualRing(
      color: ResColors.primary,
      size: size ?? (context.isPhone?35:80),
      lineWidth:width?? (context.isPhone?4:8),
    );
  }
}

class LoadMoreLoading extends StatelessWidget {
  const LoadMoreLoading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const  EdgeInsets.only(top: 10, bottom: 20),
      child: Center(
        child: AppCircularLoading(size: context.isPhone? 30:50),
      ),
    );
  }
}

