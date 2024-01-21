import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import 'buttons.dart';
// import 'package:qbill/app/views/widgets/buttons/custom_icon_btn.dart';

class CustomPhotoPreview extends StatefulWidget {
  CustomPhotoPreview({
    Key? key,
    this.networkImages = const [],
    this.filesImages = const [],
    this.currentIndex = 0,
    this.isFile = false,
  }) : super(key: key);

  final List<String> networkImages;
  final List<File> filesImages;
  final bool isFile;
  int currentIndex;
  bool get showControllers =>
      isFile ? filesImages.length > 1 : networkImages.length > 1;
  @override
  State<CustomPhotoPreview> createState() => _CustomPhotoPreviewState();
}

class _CustomPhotoPreviewState extends State<CustomPhotoPreview> {
  final PageController _controller =
      PageController(initialPage: 0, keepPage: false);
  @override
  void initState() {
    Future.delayed(const Duration(), () {
      _controller.jumpToPage(widget.currentIndex);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        // height: context.height,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: widget.isFile
                  ? PageView(
                      controller: _controller,
                      children: List.generate(
                        widget.filesImages.length,
                        (index) => PhotoView(
                          imageProvider: FileImage(
                            widget.filesImages[index],
                          ),
                        ),
                      ),
                    )
                  : PageView(
                      controller: _controller,
                      children: List.generate(
                        widget.networkImages.length,
                        (index) => PhotoView(
                          imageProvider: NetworkImage(
                            widget.networkImages[index],
                          ),
                        ),
                      ),
                    ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SafeArea(
                    child: OutlinedIconButton(
                      color: Colors.black12,
                      borderColor: Colors.transparent,
                      icon: const RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                        onPressed: () => Navigator.pop(context),
                    ),
                  ),

                ],
              ),
            ),
            if (widget.showControllers)
              Align(
                alignment: Alignment.center,
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedIconButton(
                          color: Colors.black12,
                          borderColor: Colors.white,
                          icon: const RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => _controller.previousPage(
                              duration: const Duration(microseconds: 700),
                              curve: Curves.easeIn),
                        ),

                        OutlinedIconButton(
                          color: Colors.black12,
                          borderColor: Colors.white,
                          icon: const RotatedBox(
                            quarterTurns: 0,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => _controller.nextPage(
                              duration: const Duration(microseconds: 700),
                              curve: Curves.easeIn),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(16.0),
                        //     color: Colors.black54,
                        //   ),
                        //   child: FloatingActionButton(
                        //     backgroundColor: Colors.transparent,
                        //     onPressed: () => _controller.nextPage(
                        //         duration: const Duration(microseconds: 700),
                        //         curve: Curves.easeIn),
                        //     child: const Icon(
                        //       Icons.arrow_forward_ios_rounded,
                        //       color: Colors.white,
                        //     ),
                        //     // size: 45,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
