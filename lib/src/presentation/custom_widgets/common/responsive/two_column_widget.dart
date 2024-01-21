part of 'responsive.dart';

class TwoColumnUI extends StatelessWidget {
  final bool isSideMenuActivated;

  final Widget Function(BuildContext context, bool isSideColumnShown)
      tabletMainBuilder;

  final Widget Function(BuildContext context) tabletSideBuilder;

  const TwoColumnUI(
      {Key? key,
      required this.tabletMainBuilder,
      required this.tabletSideBuilder,
      this.isSideMenuActivated = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: tabletSideBuilder(context),
        ),
        if (isSideMenuActivated)
          const VerticalDivider(
            width: 1,
            color: Colors.grey,
          ),
        Expanded(
          flex: isSideMenuActivated ? 2 : 1,
          child: tabletMainBuilder(context, true),
        ),
      ],
    );
  }
}
