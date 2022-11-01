import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagement/constants/colors.dart';
import 'package:taskmanagement/constants/strings.dart';
import 'package:taskmanagement/popup_views/email_verify.dart';
import 'package:taskmanagement/popup_views/generic_alert.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required TextEditingController name,
    required TextEditingController email,
    required TextEditingController password,
  })  : _name = name,
        _email = email,
        _password = password,
        super(key: key);

  final TextEditingController _name;
  final TextEditingController _email;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          final name = _name.text;
          final email = _email.text;
          final password = _password.text;

          try {
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: email,
              password: password,
            );
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              user.updateDisplayName(name);
              await user.sendEmailVerification();
              await showEmailVerifyPopup(context);
            }
          } on FirebaseAuthException catch (error) {
            switch (error.code) {
              case 'weak-password':
                const title = Text(string0167);
                const message = Text(
                  string0168,
                );
                final textButtonList = [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text(string0169),
                  ),
                ];
                await showPopup(
                  context,
                  title,
                  message,
                  textButtonList,
                );
                break;
              case 'email-already-in-use':
                const title = Text(string0170);
                const message = Text(string0171);
                final textButtonsList = [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text(string0169),
                  ),
                ];
                await showPopup(
                  context,
                  title,
                  message,
                  textButtonsList,
                );
                break;
              case 'invalid-email':
                const title = Text(string0172);
                const message = Text(string0173);
                final textButtonsList = [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text(string0169),
                  ),
                ];
                await showPopup(
                  context,
                  title,
                  message,
                  textButtonsList,
                );
                break;
            }
          }
        },
        child: const Text(string0152),
        style: TextButton.styleFrom(
          foregroundColor: secondaryColorOne,
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
    );
  }
}
