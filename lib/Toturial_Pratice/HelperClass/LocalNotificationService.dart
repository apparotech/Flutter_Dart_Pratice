

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {

  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static void initialize() {
    
    final InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );

    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }


  static void display(RemoteMessage message) async {

    try {
      final id = DateTime.now().millisecondsSinceEpoch.remainder(100000);
      final   notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          "channel_id",
          "channel_name",
          importance: Importance.max,
          priority: Priority.high,
        )
      );

      await _flutterLocalNotificationsPlugin.show(
          id,
          message.notification?.title,
          message.notification?.body,
          notificationDetails
      );
    } catch(e) {
      print('Error showing notification: $e');
    }
  }
}