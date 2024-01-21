import 'package:flutter/material.dart';

class TitledTextField extends StatelessWidget {
  final Widget child;
  final String title;
  final bool isRequired;
  const TitledTextField(
      {super.key,
      required this.child,
      required this.title,
      this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: ListTile(
        title: Text.rich(
          TextSpan(
            text: title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            children: [
              // TextSpan(text: title),
              if (isRequired)
                const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        subtitle: Container(

          margin: const EdgeInsets.only(top: 8),
          child: child,
        ),
      ),
    );
  }
}
