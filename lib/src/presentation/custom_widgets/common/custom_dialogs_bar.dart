import 'package:bestco_app/locales/localization/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../common/res/router.dart';
import '../../../common/utils/extensions/context.dart';

BuildContext _context = NavigationService.context!;

enum DialogType { success, error, warning, info }

final  i18n=Localization.current;

extension DialogInfoEx on DialogType {
  bool get isSuccess => this == DialogType.success;
  bool get isError => this == DialogType.error;
  bool get info => this == DialogType.info;
  String get title {
    switch (this) {
      case DialogType.success:
        return i18n.success;
      case DialogType.error:
        return i18n.error;
      case DialogType.warning:
        return i18n.warning;
      default:
        return "Info";
    }
  }

  String get assetLink {
    switch (this) {
      case DialogType.success:
        return Assets.gifCheck;
      case DialogType.error:
        return Assets.gifError;
      default:
        return Assets.gifInfo;
    }
  }

  Color get color {
    switch (this) {
      case DialogType.success:
        return Colors.green;
      case DialogType.error:
        return Colors.redAccent;
      case DialogType.warning:
        return Colors.yellow;
      default:
        return Colors.lightBlue;
    }
  }
}

class AppCustomDialogs {
  static void showInfoDialog(
      {String? message, DialogType type = DialogType.info}) {
    FocusManager.instance.primaryFocus?.unfocus();
    showDialog<void>(
      context: _context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          // contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
          contentPadding: const EdgeInsets.all(10),
          // actionsPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          actionsPadding: EdgeInsets.zero,
          content: SingleChildScrollView(
            child: SizedBox(
              width: context.width * (context.isPhone ? (.8) : .6),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Image.asset(
                    type.assetLink,
                    width: 200 * (_context.isPhone ? 1 : 2.2),
                    height: 200 * (_context.isPhone ? 1 : 2),
                    fit: BoxFit.fill,
                    // color: Colors.transparent,
                  ),
                  Text(
                    type.title,
                    style: TextStyle(
                      fontSize: _context.isPhone ? 20 : 30,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xcc0f0f0f),
                      // height: 1.7142857142857142,
                    ),
                    textHeightBehavior: const TextHeightBehavior(
                        applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '$message',
                      style: TextStyle(
                        fontSize: _context.isPhone ? 16 : 25,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xcc0f0f0f),
                        // height: 1.7142857142857142,
                      ),
                      textHeightBehavior: const TextHeightBehavior(
                          applyHeightToFirstAscent: false),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: _context.isPhone ? 50 : 100,
                      decoration: BoxDecoration(
                        color: type.color,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          i18n.close,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: _context.isPhone ? 16 : 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  static alertDialog(
      {required Widget child,
      double? insetPadding,
      EdgeInsets? contentPadding}) {
    return showDialog<void>(
      context: _context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: insetPadding ?? 12),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          contentPadding: contentPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          content: child,
        );
      },
    );
  }

  static areYouSureDialog(
      {double? insetPadding,
      String? message,
      VoidCallback? onOK,
      Widget? icon,
      EdgeInsets? contentPadding}) {
    return alertDialog(
      contentPadding: contentPadding,
      insetPadding: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              if (icon != null) icon,
              if (icon != null) const SizedBox(width: 5),
               Expanded(
                child: Text(
                  i18n.areYouSure,
                  style:const  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          if (message != null)
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                message,
                style: const TextStyle(
                  // fontWeight: FontWeig,
                  fontSize: 14,
                ),
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(_context);
                },
                child:  Text(i18n.cancel),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(_context);
                  if (onOK != null) onOK();
                },
                child:  Text(
                  i18n.oK,
                  style:const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // static void showSnackBarAreYouSure(
  //     {String? message,
  //     Color? txtColor,
  //     Color? background,
  //     Widget? icon,
  //     Function()? onOK}) {
  //   if (Get.isSnackbarOpen) return;
  //   Get.snackbar(
  //     "",
  //     "",
  //     margin: EdgeInsets.zero,
  //     colorText: Colors.white,
  //     onTap: (_) => Get.closeCurrentSnackbar(),
  //
  //     // backgroundColor: Color(0xffDB0A0A),
  //     backgroundColor: background ?? Colors.red[600],
  //     borderRadius: 1,
  //     duration: Duration(seconds: 30),
  //     isDismissible: true,
  //     titleText: const SizedBox(),
  //     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
  //     messageText: Container(
  //       padding: EdgeInsets.only(bottom: 6),
  //       child: ListTile(
  //         contentPadding: EdgeInsets.zero,
  //         minVerticalPadding: 0,
  //         horizontalTitleGap: 0,
  //         visualDensity: VisualDensity(horizontal: 0, vertical: -4),
  //         // leading: icon ??
  //         //     Icon(
  //         //       Icons.dangerous_outlined,
  //         //       color: Colors.white,
  //         //       size: _context.isPhone?30:45,
  //         //     ),
  //         title: Container(
  //           margin: EdgeInsets.only(top: 18),
  //           child: Text(
  //             message ?? "",
  //             style: TextStyle(
  //               color: txtColor ?? Colors.white,
  //               fontSize: _context.isPhone ? 16 : 22,
  //             ),
  //           ),
  //         ),
  //         subtitle: Container(
  //           // padding: EdgeInsets.only(top: 10),
  //           margin: EdgeInsets.only(top: 10),
  //           child: Row(
  //             mainAxisSize: MainAxisSize.min,
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               Container(
  //                 width: _context.width * .5,
  //                 child: Row(
  //                   children: [
  //                     Expanded(
  //                       child: AppBtn(
  //                         text: S.current.cancel,
  //                         height: _context.isPhone ? 35 : 55,
  //                         // fontSize: 14,
  //                         onPress: () => Get.closeCurrentSnackbar(),
  //                         backgroundColor: AppColors.secondary,
  //                       ),
  //                     ),
  //                     const SizedBox(width: 10),
  //                     Expanded(
  //                       child: AppBtn(
  //                         text: S.current.yes,
  //                         height: _context.isPhone ? 35 : 55,
  //
  //                         onPress: () {
  //                           // appNavBack();
  //                           if (onOK != null) onOK();
  //                         },
  //                         // backgroundColor: AppColors.secondary,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  //   return;
  // }

  // static void showSnackBarProgressBar() {
  //   if (Get.isSnackbarOpen) return;
  //   Get.snackbar(
  //     "",
  //     "",
  //     margin: EdgeInsets.zero,
  //     colorText: Colors.white,
  //     backgroundColor: Colors.transparent.withOpacity(0.0),
  //     borderRadius: 1,
  //     duration: Duration(seconds: 10),
  //     isDismissible: false,
  //     padding: EdgeInsets.zero,
  //     titleText: const SizedBox(),
  //     messageText: const SizedBox(),
  //     showProgressIndicator: true,
  //     // progressIndicatorBackgroundColor: Colors.grey,
  //     // progressIndicatorValueColor:AlwaysStoppedAnimation<Color>(Colors.yellow) ,
  //     // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
  //   );
  //   return;
  // }
  //
  // static void progressDialog() {
  //   Get.dialog(
  //     AlertDialog(
  //       content: Row(
  //         children: [
  //           CircularProgressIndicator(),
  //           const SizedBox(width: 10),
  //           Text(S.current.wait),
  //         ],
  //       ),
  //     ),
  //     barrierDismissible: false,
  //   );
  //   return;
  // }
  //
  // static void logoutDialog({Function()? onOK}) {
  //   Get.dialog(
  //     AlertDialog(
  //       content: Container(
  //         width: Get.context!.width * (Get.context!.isPhone ? (.8) : .6),
  //         child: ListTile(
  //           contentPadding: EdgeInsets.zero,
  //           minVerticalPadding: 0,
  //           horizontalTitleGap: 0,
  //           visualDensity: VisualDensity(horizontal: 0, vertical: -4),
  //           subtitle: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Image.asset(
  //                 Assets.gifLogout,
  //                 width: 150 * (_context.isPhone ? 1 : 1.5),
  //                 height: 150 * (_context.isPhone ? 1 : 1.5),
  //               ),
  //               Container(
  //                 margin: EdgeInsets.only(top: 10),
  //                 child: Text(
  //                   // "Are you sure you want to logout?",
  //                   S.current.sureToLogout,
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: _context.isPhone ? 16 : 25,
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 18),
  //               Container(
  //                 // padding: EdgeInsets.only(top: 10),
  //                 margin: EdgeInsets.only(top: 10),
  //                 child: Row(
  //                   mainAxisSize: MainAxisSize.min,
  //                   mainAxisAlignment: MainAxisAlignment.end,
  //                   children: [
  //                     Expanded(
  //                       child: AppBtn(
  //                         text: S.current.no,
  //                         // height: 40,
  //                         // fontSize: 14,
  //                         onPress: () => appNavBack(),
  //                         backgroundColor: AppColors.secondary,
  //                       ),
  //                     ),
  //                     const SizedBox(width: 10),
  //                     Expanded(
  //                       child: AppBtn(
  //                         text: S.current.ok,
  //                         // height: 40,
  //                         // fontSize: 14,
  //                         onPress: onOK,
  //                         // backgroundColor: AppColors.secondary,
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //     // barrierDismissible: false,
  //   );
  //   return;
  // }
  //
  // static void welcomeDialog({Function()? onOK}) {
  //   FocusManager.instance.primaryFocus?.unfocus();
  //   Get.dialog(
  //     AlertDialog(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //       ),
  //       contentPadding: EdgeInsets.all(20),
  //       actionsPadding: EdgeInsets.zero,
  //       content: Container(
  //         // width: Get.size.width - 200,
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             const SizedBox(height: 20),
  //             Image.asset(
  //               Assets.gifWelcome,
  //               // width: 200,
  //               // height: 200,
  //               fit: BoxFit.fill,
  //               // color: Colors.transparent,
  //             ),
  //             const SizedBox(height: 30),
  //           ],
  //         ),
  //       ),
  //       actions: [
  //         Row(
  //           children: [
  //             Expanded(
  //               child: GestureDetector(
  //                 onTap: () => appNavBack(),
  //                 child: Container(
  //                   height: _context.isPhone ? 50 : 100,
  //                   decoration: BoxDecoration(
  //                     color: AppColors.primary,
  //                     borderRadius: BorderRadius.only(
  //                       bottomLeft: Radius.circular(20),
  //                       bottomRight: Radius.circular(20),
  //                     ),
  //                   ),
  //                   child: Center(
  //                     child: Text(
  //                       S.current.close,
  //                       style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: _context.isPhone ? 16 : 30,
  //                         fontWeight: FontWeight.w400,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //     // barrierDismissible: false,
  //   );
  //   return;
  // }
  //
  // static void unAuthLogoutDialog({Function()? onOK}) {
  //   Get.dialog(
  //     AlertDialog(
  //       content: Container(
  //         width: Get.context!.width * (Get.context!.isPhone ? (.8) : .6),
  //         child: ListTile(
  //           contentPadding: EdgeInsets.zero,
  //           minVerticalPadding: 0,
  //           horizontalTitleGap: 0,
  //           visualDensity: VisualDensity(horizontal: 0, vertical: -4),
  //           subtitle: Container(
  //             // padding: EdgeInsets.only(top: 10),
  //
  //             margin: EdgeInsets.only(top: 10),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Image.asset(
  //                   Assets.gifLogout,
  //                   width: 150 * (_context.isPhone ? 1 : 1.5),
  //                   height: 150 * (_context.isPhone ? 1 : 1.5),
  //                 ),
  //
  //                 Text(
  //                   S.current.unauthorized_user_message,
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: _context.isPhone ? 16 : 25,
  //                   ),
  //                 ),
  //                 const SizedBox(height: 20),
  //                 // const SizedBox(width: 10),
  //                 AppBtn(
  //                   text: S.current.logout,
  //                   // height: 30,
  //                   // fontSize: 14,
  //                   onPress: onOK,
  //                   // backgroundColor: AppColors.secondary,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //     barrierDismissible: false,
  //   );
  //   return;
  // }
  //
  // static void showSnackBarBlackInfo({
  //   String? title,
  //   required String message,
  //   bool isError = false,
  //   int sec = 5,
  // }) {
  //   Get.snackbar(title ?? '', message,
  //       onTap: (_) => Get.closeCurrentSnackbar(),
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: isError ? Colors.red : const Color(0xAE171818),
  //       margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
  //       padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
  //       colorText: Colors.white,
  //       titleText: const SizedBox(),
  //       messageText: Text(
  //         message,
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //             color: Colors.white,
  //             fontSize: _context.isPhone ? 14 : 22,
  //             fontWeight: FontWeight.bold),
  //       ),
  //       duration: Duration(seconds: sec),
  //       animationDuration: Duration(milliseconds: 5),
  //       maxWidth: 200,
  //       borderRadius: 8);
  // }
}
