part of 'responsive.dart';

class ResponsiveUIBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceType deviceType)
      mobileUIBuilder;
  final Widget Function(BuildContext context, DeviceType deviceType)
      tabletUIBuilder;


  final bool safeArea;
  const ResponsiveUIBuilder({
    Key? key,
    required this.mobileUIBuilder,
    required this.tabletUIBuilder,
    this.safeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: safeArea,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final deviceType = getDeviceType(MediaQuery.of(context));
          if (deviceType == DeviceType.mobile) {
            return mobileUIBuilder(context, deviceType);
          }
          return tabletUIBuilder(context, deviceType);
        },
      ),
    );
  }
}

class ResponsiveFullSizeUIBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceType deviceType)
      mobileUIBuilder;
  final Widget Function(BuildContext context, DeviceType deviceType)
      tabletUIBuilder;

  const ResponsiveFullSizeUIBuilder({
    Key? key,
    required this.mobileUIBuilder,
    required this.tabletUIBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final deviceType = getDeviceType(MediaQuery.of(context));
        if (deviceType == DeviceType.mobile) {
          return mobileUIBuilder(context, deviceType);
        }
        return tabletUIBuilder(context, deviceType);
      },
    );
  }
}
