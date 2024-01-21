import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'src/app.dart';
import 'src/bootstrap.dart';
import 'src/common/services/crashlytics.dart';
import 'src/common/services/firebase/push_notification_service.dart';

//calibri english fonts

void main() async => runZonedGuarded<Future<void>>(() async {
      // Create and initialize [WidgetsBinding]
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

      // Preserve splashscreen state.
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      // Config application function
      await Bootstrap.instance.initialize();

      // FlutterStatusbarcolor.setStatusBarColor(Colors.white);

      //init Firebase notification service
      await PushNotificationService().initialize();

      runApp(
        Phoenix(
          child: const ProviderScope(
            child: FireWatchApp(),
          ),
        ),
      );

      FlutterError.demangleStackTrace = (StackTrace stack) {
        if (stack is stack_trace.Trace) return stack.vmTrace;
        if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
        return stack;
      };

      // Remove splashscreen
      FlutterNativeSplash.remove();
    }, CrashlyticsService.instance.report);

// dart run flutter_native_splash:create
