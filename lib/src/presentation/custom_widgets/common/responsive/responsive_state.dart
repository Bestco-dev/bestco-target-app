part of 'responsive.dart';

/// Media query interface
///
/// Handles Mobile devices UI.
/// Handles Fold devices UI.
/// Handles Tablet devices UI.
abstract class IResponsiveUIState {
  /// Returns mobile
  Widget buildMobileUI(BuildContext context, DeviceType deviceType);

  /// Returns Table [Widget] for context.
  Widget buildTabletUI(BuildContext context, DeviceType deviceType);
}
