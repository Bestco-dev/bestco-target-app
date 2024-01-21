// import 'package:flutter/material.dart';
//
// import '../../../../locales/localization/l10n.dart';
// import '../../../data/demo/app.dart';
//
// class AboutApp extends StatelessWidget {
//   const AboutApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: [
//             const ListTile(
//               contentPadding: EdgeInsets.zero,
//               horizontalTitleGap: 0,
//               leading: Icon(Icons.info),
//               title: Text("Fire Watch"),
//               trailing: Text("1.0.0"),
//             ),
//             // Row(
//             //   children: [
//             //     const Icon(Icons.info),
//             //     const SizedBox(width: 10),
//             //     Expanded(
//             //       child: Text(
//             //         "",
//             //         style: const TextStyle(
//             //             fontSize: 15, fontWeight: FontWeight.bold),
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             const SizedBox(height: 10),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Text(
//                   getAppAboutTextInfo(),
//                   style: const TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text(
//                     Localization.current.close,
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text(
//                     Localization.current.close,
//                   ),
//                 )
//               ],
//             ),
//             // Ro
//           ],
//         ),
//       ),
//     );
//   }
// }
