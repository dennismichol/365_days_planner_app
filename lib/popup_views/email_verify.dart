import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_management/constants/routes.dart';
import 'package:task_management/constants/strings.dart';

Future<void> showEmailVerifyPopup(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text(string0351),
        content: const Text(string0352),
        actions: [
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                await user.reload();
                if (user.emailVerified) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    loginRoute,
                    (route) => false,
                  );
                } else {
                  Navigator.of(context).pop(true);
                }
              }
            },
            child: const Text(string0169),
          ),
        ],
      );
    },
  );
}
