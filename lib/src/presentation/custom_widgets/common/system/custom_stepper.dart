// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// // import 'package:profil_link/includes/palette.dart';
//
// /// The state of a [CustomStep] which is used to control the style of the circle and
// /// text.
// ///
// /// See also:
// ///
// ///  * [CustomStep]
// enum CustomStepState {
//   indexed,
//   editing,
//   complete,
//   disabled,
//   error,
// }
//
// /// Defines the [Stepper]'s main axis.
// enum CustomStepperType {
//   /// A linear layout of the steps
//   linear,
//   vertical,
//   horizontal,
// }
//
// const TextStyle _kStepStyle = TextStyle(
//   fontSize: 12.0,
//   color: Colors.white,
// );
// const Color _kErrorLight = Colors.red;
// final Color _kErrorDark = Colors.red.shade400;
// const Color _kCircleActiveLight = Colors.white;
// const Color _kCircleActiveDark = Colors.black87;
// const Color _kDisabledLight = Colors.black38;
// const Color _kDisabledDark = Colors.white38;
// const double _kStepSize = 24.0;
// const double _kTriangleHeight = _kStepSize * 0.866025; // Triangle height. sqrt(3.0) / 2.0
//
// @immutable
// class CustomStep {
//   const CustomStep({
//     required this.title,
//     this.subtitle,
//     required this.content,
//     this.state = CustomStepState.indexed,
//     this.isActive = false,
//   }) : assert(title != null),
//         assert(content != null),
//         assert(state != null);
//
//   final Widget title;
//   final Widget? subtitle;
//   final Widget content;
//   final CustomStepState state;
//   final bool isActive;
// }
//
// /// The widget is a CustomStepper based on default Stepper.
// /// We added 2 new options :
// /// - CustomStepperType.linear to implement LinearProgressIndicator
// /// - stepperTypePrefix to implement text before LinearProgressIndicator with currentStep vs totalStep (example : Question 1/10)
// /// {@tool sample --template=stateful_widget_scaffold_center}
// ///
// /// ```dart
// /// int _index = 0;
// ///
// /// @override
// /// Widget build(BuildContext context) {
// ///   return CustomStepper(
// ///     currentStep: _index,
// ///     stepperTypePrefix: "Question"
// ///     type: CustomStepperType.linear
// ///     onStepCancel: () {
// ///       if (_index > 0) {
// ///         setState(() { _index -= 1; });
// ///       }
// ///     },
// ///     onStepContinue: () {
// ///       if (_index <= 0) {
// ///         setState(() { _index += 1; });
// ///       }
// ///     },
// ///     onStepTapped: (int index) {
// ///       setState(() { _index = index; });
// ///     },
// ///     steps: <Step>[
// ///       Step(
// ///         title: const Text('Step 1 title'),
// ///         content: Container(
// ///           alignment: Alignment.centerLeft,
// ///           child: const Text('Content for Step 1')
// ///         ),
// ///       ),
// ///       const Step(
// ///         title: Text('Step 2 title'),
// ///         content: Text('Content for Step 2'),
// ///       ),
// ///     ],
// ///   );
// /// }
// /// ```
// ///
// /// {@end-tool}
// ///
// /// See also:
// ///  * [Step]
// ///  * <https://material.io/archive/guidelines/components/steppers.html>
// ///
// class CustomStepper extends StatefulWidget {
//   const CustomStepper({
//     Key? key,
//     required this.steps,
//     this.physics,
//     this.type = CustomStepperType.vertical,
//     this.stepperTypePrefix,
//     this.currentStep = 0,
//     this.onStepTapped,
//     this.onStepContinue,
//     this.onStepCancel,
//     this.controlsBuilder,
//     this.elevation,
//   }) : assert(steps != null),
//         assert(type != null),
//         assert(currentStep != null),
//         assert(0 <= currentStep && currentStep < steps.length),
//         super(key: key);
//   final List<CustomStep> steps;
//   final ScrollPhysics? physics;
//   final CustomStepperType type;
//   final int currentStep;
//   final ValueChanged<int>? onStepTapped;
//   final VoidCallback? onStepContinue;
//   final VoidCallback? onStepCancel;
//   final ControlsWidgetBuilder? controlsBuilder;
//   final double? elevation;
//   final String? stepperTypePrefix;
//
//   @override
//   State<CustomStepper> createState() => _CustomStepperState();
// }
//
// class _CustomStepperState extends State<CustomStepper> with TickerProviderStateMixin {
//   late List<GlobalKey> _keys;
//   final Map<int, CustomStepState> _oldStates = <int, CustomStepState>{};
//
//   @override
//   void initState() {
//     super.initState();
//     _keys = List<GlobalKey>.generate(
//       widget.steps.length,
//           (int i) => GlobalKey(),
//     );
//
//     for (int i = 0; i < widget.steps.length; i += 1)
//       _oldStates[i] = widget.steps[i].state;
//   }
//
//   @override
//   void didUpdateWidget(CustomStepper oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     assert(widget.steps.length == oldWidget.steps.length);
//
//     for (int i = 0; i < oldWidget.steps.length; i += 1)
//       _oldStates[i] = oldWidget.steps[i].state;
//   }
//
//   bool _isFirst(int index) {
//     return index == 0;
//   }
//
//   bool _isLast(int index) {
//     return widget.steps.length - 1 == index;
//   }
//
//   bool _isCurrent(int index) {
//     return widget.currentStep == index;
//   }
//
//   bool _isDark() {
//     return Theme.of(context).brightness == Brightness.dark;
//   }
//
//   Widget _buildLine(bool visible) {
//     return Container(
//       width: visible ? 1.0 : 0.0,
//       height: 16.0,
//       color: Colors.grey.shade400,
//     );
//   }
//
//   Widget _buildCircleChild(int index, bool oldState) {
//     final CustomStepState state = oldState ? _oldStates[index]! : widget.steps[index].state;
//     final bool isDarkActive = _isDark() && widget.steps[index].isActive;
//     assert(state != null);
//     switch (state) {
//       case CustomStepState.indexed:
//       case CustomStepState.disabled:
//         return Text(
//           '${index + 1}',
//           style: isDarkActive ? _kStepStyle.copyWith(color: Colors.black87) : _kStepStyle,
//         );
//       case CustomStepState.editing:
//         return Icon(
//           Icons.edit,
//           color: isDarkActive ? _kCircleActiveDark : _kCircleActiveLight,
//           size: 18.0,
//         );
//       case CustomStepState.complete:
//         return Icon(
//           Icons.check,
//           color: isDarkActive ? _kCircleActiveDark : _kCircleActiveLight,
//           size: 18.0,
//         );
//       case CustomStepState.error:
//         return const Text('!', style: _kStepStyle);
//     }
//   }
//
//   Color _circleColor(int index) {
//     final ColorScheme colorScheme = Theme.of(context).colorScheme;
//     if (!_isDark()) {
//       return widget.steps[index].isActive ? colorScheme.primary : colorScheme.onSurface.withOpacity(0.38);
//     } else {
//       return widget.steps[index].isActive ? colorScheme.secondary : colorScheme.background;
//     }
//   }
//
//   Widget _buildCircle(int index, bool oldState) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       width: _kStepSize,
//       height: _kStepSize,
//       child: AnimatedContainer(
//         curve: Curves.fastOutSlowIn,
//         duration: kThemeAnimationDuration,
//         decoration: BoxDecoration(
//           color: _circleColor(index),
//           shape: BoxShape.circle,
//         ),
//         child: Center(
//           child: _buildCircleChild(index, oldState && widget.steps[index].state == CustomStepState.error),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTriangle(int index, bool oldState) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       width: _kStepSize,
//       height: _kStepSize,
//       child: Center(
//         child: SizedBox(
//           width: _kStepSize,
//           height: _kTriangleHeight, // Height of 24dp-long-sided equilateral triangle.
//           child: CustomPaint(
//             painter: _TrianglePainter(
//               color: _isDark() ? _kErrorDark : _kErrorLight,
//             ),
//             child: Align(
//               alignment: const Alignment(0.0, 0.8), // 0.8 looks better than the geometrical 0.33.
//               child: _buildCircleChild(index, oldState && widget.steps[index].state != CustomStepState.error),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildIcon(int index) {
//     if (widget.steps[index].state != _oldStates[index]) {
//       return AnimatedCrossFade(
//         firstChild: _buildCircle(index, true),
//         secondChild: _buildTriangle(index, true),
//         firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
//         secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
//         sizeCurve: Curves.fastOutSlowIn,
//         crossFadeState: widget.steps[index].state == CustomStepState.error ? CrossFadeState.showSecond : CrossFadeState.showFirst,
//         duration: kThemeAnimationDuration,
//       );
//     } else {
//       if (widget.steps[index].state != CustomStepState.error)
//         return _buildCircle(index, false);
//       else
//         return _buildTriangle(index, false);
//     }
//   }
//
//   Widget _buildVerticalControls() {
//     if (widget.controlsBuilder != null)
//       return widget.controlsBuilder!(context, onStepContinue: widget.onStepContinue, onStepCancel: widget.onStepCancel);
//
//     final Color cancelColor;
//     switch (Theme.of(context).brightness) {
//       case Brightness.light:
//         cancelColor = Colors.black54;
//         break;
//       case Brightness.dark:
//         cancelColor = Colors.white70;
//         break;
//     }
//
//     final ThemeData themeData = Theme.of(context);
//     final ColorScheme colorScheme = themeData.colorScheme;
//     final MaterialLocalizations localizations = MaterialLocalizations.of(context);
//
//     const OutlinedBorder buttonShape = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2)));
//     const EdgeInsets buttonPadding = EdgeInsets.symmetric(horizontal: 16.0);
//
//     return Container(
//       margin: const EdgeInsets.only(top: 16.0),
//       child: ConstrainedBox(
//         constraints: const BoxConstraints.tightFor(height: 48.0),
//         child: Row(
//           children: <Widget>[
//             TextButton(
//               onPressed: widget.onStepContinue,
//               style: ButtonStyle(
//                 foregroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//                   return states.contains(MaterialState.disabled) ? null : (_isDark() ? colorScheme.onSurface : colorScheme.onPrimary);
//                 }),
//                 backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
//                   return _isDark() || states.contains(MaterialState.disabled) ? null : colorScheme.primary;
//                 }),
//                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(buttonPadding),
//                 shape: MaterialStateProperty.all<OutlinedBorder>(buttonShape),
//               ),
//               child: Text(localizations.continueButtonLabel),
//             ),
//             Container(
//               margin: const EdgeInsetsDirectional.only(start: 8.0),
//               child: TextButton(
//                 onPressed: widget.onStepCancel,
//                 style: TextButton.styleFrom(
//                   primary: cancelColor,
//                   padding: buttonPadding,
//                   shape: buttonShape,
//                 ),
//                 child: Text(localizations.cancelButtonLabel),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   TextStyle _titleStyle(int index) {
//     final ThemeData themeData = Theme.of(context);
//     final TextTheme textTheme = themeData.textTheme;
//
//     assert(widget.steps[index].state != null);
//     switch (widget.steps[index].state) {
//       case CustomStepState.indexed:
//       case CustomStepState.editing:
//       case CustomStepState.complete:
//         return textTheme.bodyText1!;
//       case CustomStepState.disabled:
//         return textTheme.bodyText1!.copyWith(
//           color: _isDark() ? _kDisabledDark : _kDisabledLight,
//         );
//       case CustomStepState.error:
//         return textTheme.bodyText1!.copyWith(
//           color: _isDark() ? _kErrorDark : _kErrorLight,
//         );
//     }
//   }
//
//   TextStyle _subtitleStyle(int index) {
//     final ThemeData themeData = Theme.of(context);
//     final TextTheme textTheme = themeData.textTheme;
//
//     assert(widget.steps[index].state != null);
//     switch (widget.steps[index].state) {
//       case CustomStepState.indexed:
//       case CustomStepState.editing:
//       case CustomStepState.complete:
//         return textTheme.caption!;
//       case CustomStepState.disabled:
//         return textTheme.caption!.copyWith(
//           color: _isDark() ? _kDisabledDark : _kDisabledLight,
//         );
//       case CustomStepState.error:
//         return textTheme.caption!.copyWith(
//           color: _isDark() ? _kErrorDark : _kErrorLight,
//         );
//     }
//   }
//
//   Widget _buildHeaderText(int index) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         AnimatedDefaultTextStyle(
//           style: _titleStyle(index),
//           duration: kThemeAnimationDuration,
//           curve: Curves.fastOutSlowIn,
//           child: widget.steps[index].title,
//         ),
//         if (widget.steps[index].subtitle != null)
//           Container(
//             margin: const EdgeInsets.only(top: 2.0),
//             child: AnimatedDefaultTextStyle(
//               style: _subtitleStyle(index),
//               duration: kThemeAnimationDuration,
//               curve: Curves.fastOutSlowIn,
//               child: widget.steps[index].subtitle!,
//             ),
//           ),
//       ],
//     );
//   }
//
//   Widget _buildVerticalHeader(int index) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 24.0),
//       child: Row(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               _buildLine(!_isFirst(index)),
//               _buildIcon(index),
//               _buildLine(!_isLast(index)),
//             ],
//           ),
//           Expanded(
//             child: Container(
//               margin: const EdgeInsetsDirectional.only(start: 12.0),
//               child: _buildHeaderText(index),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildVerticalBody(int index) {
//     return Stack(
//       children: <Widget>[
//         PositionedDirectional(
//           start: 24.0,
//           top: 0.0,
//           bottom: 0.0,
//           child: SizedBox(
//             width: 24.0,
//             child: Center(
//               child: SizedBox(
//                 width: _isLast(index) ? 0.0 : 1.0,
//                 child: Container(
//                   color: Colors.grey.shade400,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         AnimatedCrossFade(
//           firstChild: Container(height: 0.0),
//           secondChild: Container(
//             margin: const EdgeInsetsDirectional.only(
//               start: 60.0,
//               end: 24.0,
//               bottom: 24.0,
//             ),
//             child: Column(
//               children: <Widget>[
//                 widget.steps[index].content,
//                 _buildVerticalControls(),
//               ],
//             ),
//           ),
//           firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
//           secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
//           sizeCurve: Curves.fastOutSlowIn,
//           crossFadeState: _isCurrent(index) ? CrossFadeState.showSecond : CrossFadeState.showFirst,
//           duration: kThemeAnimationDuration,
//         ),
//       ],
//     );
//   }
//
//   Widget _buildLinearStepperType() {
//     var totalSteps = widget.steps.length;
//     var activeSteps = 0;
//     var linearProgressValue = 0.0;
//     for (int i = 0; i < widget.steps.length; i += 1) {
//       if (widget.steps[i].isActive) {
//         activeSteps = activeSteps + 1;
//       }
//     }
//     linearProgressValue = activeSteps / totalSteps;
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: (activeSteps > 1 && activeSteps < totalSteps)
//               ? _linearProgress(linearProgressValue, totalSteps, activeSteps)
//               : Text('', style: TextStyle(height: 0)),
//         ),
//         Expanded(
//           child: ListView(
//             physics: widget.physics,
//             padding: const EdgeInsets.all(24.0),
//             children: <Widget>[
//               AnimatedSize(
//                 curve: Curves.fastOutSlowIn,
//                 duration: kThemeAnimationDuration,
//                 child: widget.steps[widget.currentStep].content,
//               ),
//               _buildVerticalControls(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   _linearProgress(linearProgressValue, totalSteps, activeSteps) {
//     return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       (widget.stepperTypePrefix != null) ?
//       Text(
//           widget.stepperTypePrefix.toString() +
//               " " +
//               (activeSteps - 1).toString() +
//               "/" +
//               (totalSteps - 2).toString(),
//           style: TextStyle(
//               color: Palette.lightBlue,
//               fontSize: 12,
//               fontWeight: FontWeight.bold),
//           textAlign: TextAlign.left)
//           : Container(),
//       SizedBox(height: 10),
//       LinearProgressIndicator(
//         value: linearProgressValue,
//         minHeight: 5,
//         backgroundColor: Palette.lightgrey,
//         semanticsLabel: 'Linear progress indicator',
//       )
//     ]);
//   }
//
//   Widget _buildVertical() {
//     return ListView(
//       shrinkWrap: true,
//       physics: widget.physics,
//       children: <Widget>[
//         for (int i = 0; i < widget.steps.length; i += 1)
//           Column(
//             key: _keys[i],
//             children: <Widget>[
//               InkWell(
//                 onTap: widget.steps[i].state != CustomStepState.disabled ? () {
//                   // In the vertical case we need to scroll to the newly tapped
//                   // step.
//                   Scrollable.ensureVisible(
//                     _keys[i].currentContext!,
//                     curve: Curves.fastOutSlowIn,
//                     duration: kThemeAnimationDuration,
//                   );
//                   widget.onStepTapped?.call(i);
//                 } : null,
//                 canRequestFocus: widget.steps[i].state != CustomStepState.disabled,
//                 child: _buildVerticalHeader(i),
//               ),
//               _buildVerticalBody(i),
//             ],
//           ),
//       ],
//     );
//   }
//
//   Widget _buildHorizontal() {
//     final List<Widget> children = <Widget>[
//       for (int i = 0; i < widget.steps.length; i += 1) ...<Widget>[
//         InkResponse(
//           onTap: widget.steps[i].state != CustomStepState.disabled ? () {
//             widget.onStepTapped?.call(i);
//           } : null,
//           canRequestFocus: widget.steps[i].state != CustomStepState.disabled,
//           child: Row(
//             children: <Widget>[
//               SizedBox(
//                 height: 72.0,
//                 child: Center(
//                   child: _buildIcon(i),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsetsDirectional.only(start: 12.0),
//                 child: _buildHeaderText(i),
//               ),
//             ],
//           ),
//         ),
//         if (!_isLast(i))
//           Expanded(
//             child: Container(
//               margin: const EdgeInsets.symmetric(horizontal: 8.0),
//               height: 1.0,
//               color: Colors.grey.shade400,
//             ),
//           ),
//       ],
//     ];
//
//     return Column(
//       children: <Widget>[
//         Material(
//           elevation: widget.elevation ?? 2,
//           child: Container(
//             margin: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Row(
//               children: children,
//             ),
//           ),
//         ),
//         Expanded(
//           child: ListView(
//             physics: widget.physics,
//             padding: const EdgeInsets.all(24.0),
//             children: <Widget>[
//               AnimatedSize(
//                 curve: Curves.fastOutSlowIn,
//                 duration: kThemeAnimationDuration,
//                 child: widget.steps[widget.currentStep].content,
//               ),
//               _buildVerticalControls(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     assert(debugCheckHasMaterial(context));
//     assert(debugCheckHasMaterialLocalizations(context));
//     assert(() {
//       if (context.findAncestorWidgetOfExactType<CustomStepper>() != null)
//         throw FlutterError(
//           'Steppers must not be nested.\n'
//               'The material specification advises that one should avoid embedding '
//               'steppers within steppers. '
//               'https://material.io/archive/guidelines/components/steppers.html#steppers-usage',
//         );
//       return true;
//     }());
//     assert(widget.type != null);
//     switch (widget.type) {
//       case CustomStepperType.linear:
//         return _buildLinearStepperType();
//       case CustomStepperType.vertical:
//         return _buildVertical();
//       case CustomStepperType.horizontal:
//         return _buildHorizontal();
//     }
//   }
// }
//
// class _TrianglePainter extends CustomPainter {
//   _TrianglePainter({
//     required this.color,
//   });
//
//   final Color color;
//
//   @override
//   bool hitTest(Offset point) => true; // Hitting the rectangle is fine enough.
//
//   @override
//   bool shouldRepaint(_TrianglePainter oldPainter) {
//     return oldPainter.color != color;
//   }
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final double base = size.width;
//     final double halfBase = size.width / 2.0;
//     final double height = size.height;
//     final List<Offset> points = <Offset>[
//       Offset(0.0, height),
//       Offset(base, height),
//       Offset(halfBase, 0.0),
//     ];
//
//     canvas.drawPath(
//       Path()..addPolygon(points, true),
//       Paint()..color = color,
//     );
//   }
// }
//
//
