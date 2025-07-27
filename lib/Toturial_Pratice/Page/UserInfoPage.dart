import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:questions_pratice/Toturial_Pratice/UserRepository/UserRepository.dart';

class UserInfoPage extends StatelessWidget {
  final User user;

  const UserInfoPage({required Key key, required
  this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserRepository>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children:<Widget> [

            TextButton(
                onPressed: () {
                userProvider.signOut();
                },
                child: Text('SIGN OUT'),
            )
          ],
        ),
      ),
    );
  }
}

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Center(
        child: Text('Spalsh screen'),
      ),
    );
  }
}
