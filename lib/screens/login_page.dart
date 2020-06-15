import 'package:flutter/material.dart';
import 'package:flutterfirebase/service/authentication.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          child: Text('Sign In with Google'),
          onPressed: () {
            handleSignIn().then(
              (value) => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(value),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
