import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/constants/routes.dart';
import 'package:task_management/firebase_options.dart';
import 'package:task_management/screens/main/main_view.dart';
import 'package:task_management/screens/onboarding/introduction_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_management/screens/login/login_view.dart';
import 'package:task_management/screens/sign_up/sign_up_view.dart';
import 'dart:developer' as devtools show log;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MaterialApp(
      title: '365 DAYS',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "SF Pro Display",
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light))),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        loginRoute: (context) => const LoginView(),
        signUpRoute: (context) => const SignUpView(),
        mainScreenRoute: (context) => const MainScreenView(),
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
              devtools.log(user.displayName ?? 'None');
              if (user.emailVerified) {
                devtools.log('Email is verified');
                return const MainScreenView();
              } else {
                devtools.log('Email not verified');
                return const MainScreenView();
              }
            } else {
              devtools.log('No user');
            }
            devtools.log('yeah');
            return const IntroductionPage();
          default:
            devtools.log('wassap');
            return const LoginView();
        }
      },
    );
  }
}
