// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../../common/res/colors.dart';
// import '../../../../common/utils/luncher.dart';
// import '../../../../domain/entities/address/address.dart';
// import '../buttons.dart';
//
// class MapWidget extends StatefulWidget {
//   final AddressModel address;
//   const MapWidget({required this.address, Key? key}) : super(key: key);
//
//   @override
//   State<MapWidget> createState() => _MapWidgetState();
// }
//
// class _MapWidgetState extends State<MapWidget> {
//   final Completer<GoogleMapController> _controller = Completer();
//   CameraPosition _kGooglePlex = const CameraPosition(
//     target: LatLng(0, 0),
//   );
//   Set<Marker> markers = {};
//   @override
//   void initState() {
//     LatLng showLocation =
//         LatLng(widget.address.latitude, widget.address.longitude);
//     _kGooglePlex = CameraPosition(
//       target: showLocation,
//       zoom: 16,
//     );
//     markers = {
//       Marker(
//         //add first marker
//         markerId: MarkerId(showLocation.toString()),
//         position: showLocation, //position of marker
//         infoWindow: InfoWindow(
//           title: widget.address.name,
//           snippet: widget.address.name,
//         ),
//         icon: BitmapDescriptor.defaultMarker, //Icon for Marker
//       ),
//     };
//     setState(() {});
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     ;
//     return SizedBox(
//       height: 150,
//       child: ClipRRect(
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//         child: Stack(
//           children: [
//             Positioned.fill(
//               child: _map(isZoomAble: false),
//             ),
//             Positioned.fill(
//               child: InkWell(
//                 onTap: () {
//                   ResLauncher.instance.openMap(
//                       widget.address.latitude, widget.address.longitude);
//                 },
//                 child: Container(
//                   color: Colors.black12,
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: OutlinedIconButton(
//                       color: ResColors.primary50,
//                       borderColor: ResColors.secondary,
//                       onPressed: () {
//                         ResLauncher.instance.openMap(
//                             widget.address.latitude, widget.address.longitude);
//                       },
//                       icon: Transform.rotate(
//                         angle: 45,
//                         child: const Icon(Iconsax.direct_up,
//                             color: ResColors.secondary),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _map({bool isZoomAble = true}) {
//     return GoogleMap(
//       zoomControlsEnabled: isZoomAble,
//       markers: markers,
//       mapType: MapType.normal,
//       initialCameraPosition: _kGooglePlex,
//       onMapCreated: (GoogleMapController controller) {
//         if (_controller.isCompleted) {
//           _controller.complete(controller);
//         }
//       },
//     );
//   }
// }
//
// // import 'dart:async';
// //
// // import 'package:flutter/material.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// //
// // class MapWidget extends StatelessWidget {
// //   const MapWidget({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final Completer<GoogleMapController> controller =
// //     Completer<GoogleMapController>();
// //      const CameraPosition kGooglePlex = CameraPosition(
// //       target: LatLng(37.42796133580664, -122.085749655962),
// //       zoom: 14.4746,
// //     );
// //     return Container(
// //       height: 100,
// //       // width: 100,
// //       color: Colors.grey[200],
// //       child:
// //       GoogleMap(
// //         mapType: MapType.terrain,
// //         myLocationButtonEnabled: false,
// //         initialCameraPosition: kGooglePlex,
// //         onMapCreated: (GoogleMapController controller) {
// //           // controller.complete(controller);
// //         },
// //       ),
// //     );
// //   }
// // }
