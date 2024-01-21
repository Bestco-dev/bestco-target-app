import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/res/colors.dart';

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFD7D7F1),
    Color(0xFFD7D7E3),
    Color(0xFFECEDF3),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

class CustomSkeleton extends StatelessWidget {
  final Widget child;

  const CustomSkeleton({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer(gradient: shimmerGradient, child: child);
  }
}

class Skeleton extends StatelessWidget {
  final double width;
  final double height;

  const Skeleton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSkeleton(
      child: ColoredBox(
        color: ResColors.cardBackground,
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}

class RoundedSkeleton extends StatelessWidget {
  final double width;
  final double height;
  final double? radius;

  const RoundedSkeleton({
    Key? key,
    required this.width,
    required this.height,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSkeleton(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ResColors.cardBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 16),
          ),
        ),
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}
