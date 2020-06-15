import 'package:flutter/material.dart';
import 'package:flutterfirebase/service/authentication.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.displayName}'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              signOut();
              Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
            },
          )
        ],
      ),
    );
  }
}
