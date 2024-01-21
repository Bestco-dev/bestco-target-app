// import 'package:easy_stepper/easy_stepper.dart';
// import 'package:flutter/material.dart';
//
// class CustomTopStepper extends StatelessWidget {
//   const CustomTopStepper({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
//
//   Widget _topStepper() {
//     return EasyStepper(
//       direction: Axis.horizontal,
//       activeStep: _currentTopStep,
//       lineLength: 20,
//       // lineSpace: 10,
//       lineThickness: 2,
//
//       lineType: LineType.normal,
//       internalPadding: 5,
//       defaultLineColor: Colors.green[200],
//       finishedLineColor: Colors.green,
//       activeStepBackgroundColor: Colors.white,
//       finishedStepBackgroundColor: Colors.green,
//       unreachedStepBackgroundColor: Colors.grey[400],
//       borderThickness: 4,
//       activeStepBorderColor: Colors.red,
//       showLoadingAnimation: false,
//       defaultStepBorderType: BorderType.normal,
//       stepRadius: context.width*.07,
//
//       steps: [
//         ...List.generate(
//           4,
//               (index) => EasyStep(
//             customStep: Container(
//
//               child: _currentTopStep > index
//                   ? const Center(
//                 child: Icon(
//                   Icons.check,
//                   color: Colors.white,
//                 ),
//               )
//                   : Container(
//
//                 child: Center(
//                   child: Text(
//                     "${index + 1}",
//                     style: const TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//       onStepReached: (index) => setState(() => _currentTopStep = index),
//     );
//   }
// }
