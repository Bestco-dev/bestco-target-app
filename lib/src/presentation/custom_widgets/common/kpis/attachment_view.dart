import 'dart:io';

import 'package:flutter/material.dart';

import '../photo_preview.dart';

class AttachmentView extends StatelessWidget {
  final double? size;
  final List<String> networkImagesSources;
  final List<File> filesImagesSources;
  final bool isFiles;
  const AttachmentView({
    this.size,
    this.networkImagesSources = const [],
    this.filesImagesSources = const [],
    this.isFiles = false,
    super.key,
  });

  void _photoPreview(BuildContext context, int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      builder: (context) {
        return CustomPhotoPreview(
          isFile: isFiles,
          filesImages: filesImagesSources,
          networkImages: networkImagesSources,
          currentIndex: index,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 100,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:
            isFiles ? filesImagesSources.length : networkImagesSources.length,
        itemBuilder: (context, index) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => _photoPreview(context, index),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: ColoredBox(
                  color: Colors.grey,
                  child: !isFiles
                      ? Image.network(
                          networkImagesSources[index],
                          fit: BoxFit.fill,
                          height: size ?? 100.0,
                          width: size ?? 100.0,
                        )
                      : Image.file(
                          filesImagesSources[index],
                          fit: BoxFit.fill,
                          height: size ?? 100.0,
                          width: size ?? 100.0,
                        ),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
