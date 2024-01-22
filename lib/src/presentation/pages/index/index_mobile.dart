import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/res/colors.dart';
import '../home/home.dart';

class IndexMobilePage extends StatefulWidget {
  const IndexMobilePage({Key? key}) : super(key: key);

  @override
  State<IndexMobilePage> createState() => _IndexMobilePageState();
}

class _IndexMobilePageState extends State<IndexMobilePage> {
  int _currentIndex = 0;
  bool isSelected = false;
  late List<Widget> _widgets;
  final List<int> loaded = [
    0,
  ];

  @override
  void initState() {
    super.initState();

    _widgets = [
      const HomePage(),
      // Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  _onPageSelected(int index) {
    if (index == _currentIndex) return;
    // if (!loaded.contains(index)) {
    //   loaded.add(index);
    //   _widgets[index] = index == 1
    //       ? const CalenderPage(key: PageStorageKey('CalenderPage'))
    //       : index == 2
    //           ? const NotificationsPage(
    //               key: PageStorageKey('NotificationMobilePage'))
    //           : const NotificationsPage(key: PageStorageKey('AccountMobilePage'));
    // }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    // return const HomePage();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        // systemNavigationBarColor: ResColors.background,
      ),
      child: const HomePage(),
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        // systemNavigationBarColor: ResColors.background,
      ),
      child: Scaffold(
        // backgroundColor: Colors.grey[300],
        body: IndexedStack(
          index: _currentIndex,
          children: _widgets,
        ),
        bottomNavigationBar: SafeArea(
          child: CurvedNavigationBar(
            // backgroundColor: Colors.transparent,
            // color: ResColors.cardBackground,
            backgroundColor: const Color(0xfff1efef),
            height: 50,

            items: const <Widget>[
              Icon(
                Iconsax.home,
                size: 32,
                color: ResColors.primary,
              ),
              Icon(
                Iconsax.calendar,
                size: 32,
                color: ResColors.primary,
              ),
              Icon(
                Iconsax.notification,
                size: 32,
                color: ResColors.primary,
              ),
              Icon(
                Iconsax.user,
                size: 32,
                color: ResColors.primary,
              )
            ],
            onTap: _onPageSelected,
          ),
        ),
      ),
    );
  }
}

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  // void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint _paint = Paint()
      ..color = ResColors.primary
      ..strokeWidth = 2
      ..isAntiAlias = true;
    canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), _paint);
  }
}
