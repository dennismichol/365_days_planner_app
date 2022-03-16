import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/routes.dart';
import 'package:task_management/constants/strings.dart';
import 'package:task_management/popup_views/email_verify.dart';
import 'dart:developer' as devtools show log;

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  bool _isObscure = true;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: string0301,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                controller: _password,
                obscureText: _isObscure,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: string0302,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility),
                    color: _isObscure ? secondaryColorTwo : primaryColorOne,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        spreadRadius: 3,
                        offset: const Offset(0, 3),
                        blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () async {
                    final email = _email.text;
                    final password = _password.text;
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email, password: password);
                      final user = FirebaseAuth.instance.currentUser;
                      if (user != null) {
                        if (user.emailVerified) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            mainScreenRoute,
                            (route) => false,
                          );
                        } else {
                          await showEmailVerifyPopup(context);
                        }
                      }
                    } on FirebaseAuthException catch (error) {
                      switch (error.code) {
                        case "user-not-found":
                          devtools.log("invalid user");
                          break;
                      }
                    }
                  },
                  child: const Text(string0157),
                  style: TextButton.styleFrom(
                    primary: secondaryColorOne,
                    backgroundColor: primaryColorOne,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: secondaryColorFour,
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: string0155),
                      TextSpan(
                        text: string0156,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                signUpRoute, (route) => false);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(145, 0, 10, 0),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  ),
                  Text(
                    string0160,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 145, 0),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        spreadRadius: 3,
                        offset: const Offset(0, 3),
                        blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                  ),
                  label: const Text(string0158),
                  style: TextButton.styleFrom(
                    primary: secondaryColorOne,
                    backgroundColor: facebookBlue,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.7),
                        spreadRadius: 3,
                        offset: const Offset(0, 3),
                        blurRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  label: const Text(string0159),
                  style: TextButton.styleFrom(
                    primary: secondaryColorOne,
                    backgroundColor: googleRed,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
