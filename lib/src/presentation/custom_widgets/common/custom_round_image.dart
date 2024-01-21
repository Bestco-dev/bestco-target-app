import 'package:flutter/material.dart';

import 'photo_preview.dart';

class CustomRoundImage extends StatelessWidget {
  final String url;
  final double? radius;
  final double size;
  final Color? borderColor;
  final double? borderWidth;
  const CustomRoundImage(
      {required this.url,
      this.size = 48,
      this.borderColor,
      this.borderWidth,
      this.radius,
      super.key});

  void _photoPreview(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      builder: (context) {
        return CustomPhotoPreview(
          isFile: false,
          networkImages: [url],
          currentIndex: 0,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) return const SizedBox();
    return GestureDetector(
      onTap: () => _photoPreview(context),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: borderWidth ?? 1,
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(url),
        ),
      ),
    );
  }
}
