import 'package:flutter/material.dart';

import 'shimmer_tile.dart';



class DropDownPlaceholder extends StatelessWidget {
  final double hPadding;

  const DropDownPlaceholder({
    Key? key,
    this.hPadding = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10.0),
      // margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // RoundedSkeleton(width: 46, height: 46),
          // ResHorizontalGap.gap05,
          Expanded(
            child: RoundedSkeleton(
              width: 200,
              height: 50,
              radius: 10,
            ),
          ),
          // RoundedSkeleton(width: 20, height: 20),
        ],
      ),
    );
  }
}
