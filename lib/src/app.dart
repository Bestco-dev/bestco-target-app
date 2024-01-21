
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../locales/localization/l10n.dart';
import 'common/res/router.dart';
import 'common/res/theme.dart';
import 'presentation/view_models/language_view_model.dart';




final navigatorKeyProvider = Provider((_) => GlobalKey<NavigatorState>());
final buildContext = Provider((ref) => ref.watch(navigatorKeyProvider).currentContext);


class FireWatchApp extends ConsumerStatefulWidget {
  final String? notificationPayload;

  const FireWatchApp({
    Key? key,
    this.notificationPayload,
  }) : super(key: key);

  @override
  ConsumerState<FireWatchApp> createState() => _AppState();
}

class _AppState extends ConsumerState<FireWatchApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // // PushNotificationService.instance.listen(backgroundMessagePortHandler);
    //
    // if (widget.notificationPayload?.isNotEmpty ?? false) {
    //   backgroundMessagePortHandler(widget.notificationPayload);
    // }
    //
    // /// Fires to check location permission and service
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(provideLocationViewModel.notifier).checkPermission();
    // });
  }

  void backgroundMessagePortHandler(message) async {
    // developer.log('Stage 1');
    // final notification = await parseNotificationMessage(message);
    // if (mounted && notification != null) {
    //   developer.log('Stage 2');
    //   if(notification.isPlaced) {
    //     ref.read(routerNotifierProvider.notifier).addNotification(notification);
    //   }
    // }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    // PushNotificationService.instance.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      //do your stuff
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch(languageProvider);
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      // navigatorKey: NavigationService.navigatorKey,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'FireWatch',
      themeMode: ThemeMode.light,
      theme: ResTheme.theme(lang),
      // builder: FToastBuilder(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
      locale: lang,
    );
  }
}
