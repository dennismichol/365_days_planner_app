import 'package:flutter/material.dart';
import 'package:task_management/constants/routes.dart';
import 'package:task_management/firebase_options.dart';
import 'package:task_management/views/introduction_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:developer' as devtools show log;

import 'package:task_management/views/login_view.dart';
import 'package:task_management/views/sign_up_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: '365 DAYS',
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: "SF Pro Display"),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        loginRoute: (context) => const LoginView(),
        signUpRoute: (context) => const SignUpView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                if (user.emailVerified) {
                  devtools.log('Email is verified');
                } else {
                  devtools.log('Email not verified');
                }
              } else {
                devtools.log('No user');
              }
              devtools.log('yeah');
              return const SignUpView();
            default:
              devtools.log('wassap');
              return const LoginView();
          }
        });
  }
}
