import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../locales/localization/l10n.dart';
import '../photo_preview.dart';

class KpiAttachment extends StatefulWidget {
  List<File> attachments;
  Function(List<File>) onSelected;
  final Color? labelColor;
  KpiAttachment(
      {this.attachments = const [],
      this.labelColor,
      required this.onSelected,
      super.key});

  @override
  State<KpiAttachment> createState() => _KpiAttachmentState();
}

class _KpiAttachmentState extends State<KpiAttachment> {
  void _pick() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  child: _icon(
                    Icons.image,
                    Localization.current.gallery,
                    () => _pickFromGallery(),
                    iconColor: Colors.blue,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _icon(
                    Icons.camera_alt,
                    Localization.current.camera,
                    () => _pickFromCamera(),
                    iconColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _icon(IconData iconData, String label, Function() onTap,
      {Color? background, Color? iconColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: background ?? const Color(0xffE2E9F2),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              size: 80,
              color: iconColor,
            ),
            // const SizedBox(height: 30),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickFromGallery() async {
    Navigator.pop(context);
    final ImagePicker picker = ImagePicker();
    final images = await picker.pickMultiImage();
    _update(images);
  }

  Future<void> _pickFromCamera() async {
    Navigator.pop(context);
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return;
    _update([image]);
  }

  void _update(List<XFile> images) {
    if (images.isEmpty) return;
    List<File> newImages = images.map((e) => File(e.path)).toList();
    widget.attachments = [...newImages, ...widget.attachments];
    widget.onSelected(newImages);
    setState(() {});
  }

  void _delete(int index) {
    List<File> files = [...widget.attachments];
    files.removeAt(index);
    widget.attachments = [...files];
    widget.onSelected([...files]);
    setState(() {});
  }

  void _photoPreview(int index) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      builder: (context) {
        return CustomPhotoPreview(
          isFile: true,
          filesImages: widget.attachments,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _attachments();
  }

  Widget _attachments() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      horizontalTitleGap: 0,
      // leading: Icon(Icons.attachment_sharp),
      title: Row(
        children: [
          Icon(
            Icons.attachment_sharp,
            color: widget.labelColor ?? Colors.blueAccent,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 15,
                  color: widget.labelColor,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  const TextSpan(text: " "),
                  TextSpan(
                      style: const TextStyle(fontWeight: FontWeight.normal),
                      text: "(${Localization.current.optional})"),
                ],
                text: Localization.current.attachment,
              ),
            ),
          ),
        ],
      ),
      subtitle: Container(
        height: 110,
        margin: const EdgeInsets.only(top: 10),
        // color: Colors.blueAccent,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          children: [
            ...List.generate(
              widget.attachments.isEmpty ? 3 : 1,
              (index) => GestureDetector(
                onTap: () => _pick(),
                child: _widget(
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.blue[200],
                    ),
                  ),
                ),
              ),
            ),
            ...List.generate(
              widget.attachments.length,
              (index) => _widget(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: GestureDetector(
                        onTap: () => _photoPreview(index),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.file(
                              widget.attachments[index],
                            ),
                          ),
                          // child: Image.network(FakeImages.randomImage()),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: FloatingActionButton(
                                backgroundColor: Colors.grey[200],
                                focusColor: Colors.transparent,
                                hoverElevation: 1,
                                splashColor: Colors.white.withOpacity(0.25),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () => _delete(index),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // child: Lis,
      ),
    );
  }

  Widget _widget({required Widget child}) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffE2E9F2),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: 100,
          height: 100,
          child: child,
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
