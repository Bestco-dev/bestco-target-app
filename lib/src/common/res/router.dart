import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/splashscreen/splashscreen.dart';
import '../../presentation/view_models/app_view_model.dart';

// final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  static BuildContext? context = navigatorKey.currentContext;

  static navBack() {
    if (context == null) return;
    context!.pop();
    // Navigator.pop(context!);
  }
  static pushReplaceApp() {
    if (context == null) return;
  }


}

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);
  // ref.read(routerNotifierProvider.notifier).;

  return GoRouter(
    navigatorKey: NavigationService.navigatorKey,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: SplashscreenPage.pathName,
    routes: routes,
    redirect: notifier.redirect,
  );
});
