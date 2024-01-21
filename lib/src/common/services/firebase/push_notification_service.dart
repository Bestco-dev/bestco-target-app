import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../../firebase_options.dart';
import 'local_notification.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // LocalNotification().showFirebaseLocalNotification(message);
  log("Got a message a background: ${message.messageId}");
}

class PushNotificationService {
  LocalNotification localNotification = LocalNotification();

  Future<String?> getFirebaseToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    log("token is $token");
    return token;
  }

  initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      // alert: true,
      // announcement: false,
      // badge: true,
      // carPlay: false,
      // criticalAlert: false,
      // provisional: false,
      // sound: true,
      alert: true,
      sound: true,
      badge: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      log('User granted permission: ${settings.authorizationStatus}');
      // Listening to the background messages
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

      //Subscribe to general topic
      await FirebaseMessaging.instance.subscribeToTopic('bestcoTopic');

      // Listening to the foreground messages
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log('Got a message in the foreground!');
        log('Message data: ${message.data}');
        localNotification.showFirebaseLocalNotification(message);
      });

      FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    }
    //For handling notification when the app is in terminated state
    // _checkForInitialMessage();
  }

  void _handleMessage(RemoteMessage message) {
    log("Message clicked");
  }

  _checkForInitialMessage() async {
    //handling notification when the app is in terminated state
    await Firebase.initializeApp();
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      localNotification.showFirebaseLocalNotification(initialMessage);
    }
  }
}
