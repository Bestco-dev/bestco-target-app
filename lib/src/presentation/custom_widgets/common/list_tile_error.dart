import 'package:flutter/material.dart';

class ListTileErrorWidget extends StatelessWidget {
  final String? message;
  final Function()? onReCheck;
  const ListTileErrorWidget({this.message, this.onReCheck, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        minVerticalPadding: 0,
        horizontalTitleGap: 0,
        title: Text(message ?? "Error"),
        leading: const Icon(Icons.error),
        trailing: IconButton(
          onPressed: () {
            if (onReCheck != null) {
              onReCheck!();
            }
          },
          icon: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
