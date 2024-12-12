import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:logintuts/pages/login_or_register_page.dart";
import "package:logintuts/pages/login_page.dart";
import "package:logintuts/pages/home_page.dart";

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // if user is logged in ---
          if (snapshot.hasData) {
            return HomePage();

          }

          // if user is NOT Logged in
          else {
            return LoginOrRegisterPage();
          } 
        } ,),
    );
  }
}