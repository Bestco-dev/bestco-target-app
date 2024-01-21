import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  LocalNotification() {
    _initLocalNotification();
  }
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "app_notifications",
    "App notifications",
    importance: Importance.high,
    playSound: true,
  );
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  _initLocalNotification() async {
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    var initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
            // onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
            );
    var initSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) async {
        log("local  notification clicked ..");
      },
    );
  }

  Future<void> showCustomNotification() async {
    // const AndroidNotificationDetails androidPlatformChannelSpecifics =
    // AndroidNotificationDetails(
    //   'channel_id',
    //   'channel_name',
    //
    //   importance: Importance.max,
    //   priority: Priority.high,
    //   ticker: 'ticker',
    //
    //
    //   // styleInformation: BigTextStyleInformation(
    //   //   const CustomNotification(
    //   //     title: 'Custom Notification',
    //   //     message: 'This is a custom notification.',
    //   //   ),
    //   // ),
    // );
    //
    // const NotificationDetails platformChannelSpecifics =
    // NotificationDetails(android: androidPlatformChannelSpecifics);
    //
    // await flutterLocalNotificationsPlugin.show(
    //   0,
    //   'Notification Title',
    //   'Notification Body',
    //   platformChannelSpecifics,
    //
    // );
  }

  showFirebaseLocalNotification(RemoteMessage message) {
    log("Local notification receive ..");
    flutterLocalNotificationsPlugin.show(
      message.hashCode,
      // "muller",
      message.notification?.title,
      message.notification?.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          playSound: true,
          importance: Importance.high,
        ),
      ),
    );
    log('Message also contained a notification: ${message.notification?.body}');
  }
}
