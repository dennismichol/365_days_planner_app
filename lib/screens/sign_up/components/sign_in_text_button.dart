import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/common/presentation/constants/colors.dart';
import 'package:task_management/common/presentation/constants/routes.dart';
import 'package:task_management/common/presentation/constants/strings.dart';

class SignInTextButton extends StatelessWidget {
  const SignInTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
              const TextSpan(text: string0161),
              TextSpan(
                text: string0162,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil(loginRoute, (route) => false);
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
