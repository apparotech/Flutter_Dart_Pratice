import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questions_pratice/Toturial_Pratice/HelperClass/LocalNotificationService.dart';
import 'package:questions_pratice/Toturial_Pratice/Page/HomePage.dart';
import 'package:questions_pratice/Toturial_Pratice/Page/NotificationPage.dart';
import 'package:questions_pratice/Toturial_Pratice/Service/PushNotificationService.dart';
import 'package:questions_pratice/Toturial_Pratice/bottom_nav/bottom_nav.dart';


void main()  async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();

   LocalNotificationService.initialize();

   PushNotificationService pushNotificationService = PushNotificationService();
   await pushNotificationService.initialize();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  NotificationPage()
    );
  }
}



