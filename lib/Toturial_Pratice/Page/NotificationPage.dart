import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:questions_pratice/Toturial_Pratice/Service/PushNotificationService.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final PushNotificationService pushNotificationService = PushNotificationService();

  @override
  void initState() {
    super.initState();
    _requestNotificationPermission();
    pushNotificationService.initialize(); // Yeh bhi yahin call kar do
  }

void  _requestNotificationPermission() async {
   //Ye check karta hai ki device Android hai ya nahi.
    if(Platform.isAndroid) {
      var status = await Permission.notification.status;
      if(!status.isGranted) {
        //Ye user ke saamne ek popup dikhata hai:
        await Permission.notification.request();
      }
    }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              elevation: 5
          ),
          onPressed: () {
            pushNotificationService.getToken();
          },
          child: Text('Generate Token'),
        ),
      ),
    );
  }
}

