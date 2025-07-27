
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:questions_pratice/Toturial_Pratice/HelperClass/LocalNotificationService.dart';

class PushNotificationService{

  FirebaseMessaging _fcm = FirebaseMessaging.instance;


  Future initialize() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground');
      print('message data : ${message.data}');


      if(message.notification !=  null) {

        print('Message also contained a notification: ${message.notification}' );
        LocalNotificationService.display(message);
      }

    });
  }


  Future<String?> getToken() async {
    String? token = await _fcm.getToken();
    print('Token: $token');
    return token;
  }

  
 
}