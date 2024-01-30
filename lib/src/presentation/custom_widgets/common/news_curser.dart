import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/extensions/context.dart';
import '../../../data/demo/images.dart';

class CarouselImages extends StatefulWidget {
  final List<String> images;
  final double height;

  const CarouselImages({super.key, required this.images, this.height = 250});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselImages> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: context.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'الأخبار والعروض',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF555B6A),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: CarouselSlider(
            items:[1,2,3,4].map((i) {
            // items: widget.images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    // width: 500,
                    // width: double.infinity,
                    // width: MediaQuery.of(context).size.width,
                    // margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(
                          FakeImages.randomImage(),
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    // child: ClipRRect(
                    //   borderRadius: BorderRadius.circular(10),
                    //   child: Image.network(
                    //     FakeImages.randomImage(),
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                  );
                },
              );
            }).toList(),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                autoPlayInterval: const Duration(seconds: 5),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 25 : 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  color: _current == entry.key ? Colors.green : Colors.grey,
                  shape: _current != entry.key
                      ? BoxShape.circle
                      : BoxShape.rectangle,
                  borderRadius:
                      _current == entry.key ? BorderRadius.circular(6) : null,
                ),
                // decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: (Theme.of(context).brightness == Brightness.dark
                //             ? Colors.grey
                //             : Colors.green)
                //         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
