import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questions_pratice/Toturial_Pratice/Page/LoginPage.dart';
import 'package:questions_pratice/Toturial_Pratice/Page/Splash_Screen.dart';
import 'package:questions_pratice/Toturial_Pratice/UserRepository/UserRepository.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=> UserRepository.instance(),
      child: Consumer<UserRepository>(
          builder: (context, user, _) {
            switch (user.status) {
              case Status.Uninitialized:
                return SplashScreen();

              case Status.Unauthenticated:
              case Status.Authenticating:
                return LoginPage();
              case Status.Authenticated:


       return UserInfoPage(user: user.user,);

            }
          }
      )
    );
  }
}

class UserInfoPage extends StatelessWidget {
  final User? user;

  const UserInfoPage({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(user?.email ?? " No meail"),

            TextButton(
              child: Text("SIGN OUT"),
              onPressed: () => Provider.of<UserRepository>(context).signOut(),
            )
          ],
        ),
      ),
    );
  }
}