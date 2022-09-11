import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/images.dart';
import 'package:task_management/constants/routes.dart';
import 'package:task_management/constants/strings.dart';
import 'package:task_management/pages/intro_page_generic.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, loginRoute, (route) => false);
            },
            child: const Text(
              string0151,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        toolbarHeight: 55,
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        rawPages: [
          createIntroPage(
            string0001,
            string0005,
            welcome,
          ),
          createIntroPage(
            string0002,
            string0006,
            focus,
          ),
          createIntroPage(
            string0003,
            string0007,
            habit,
          ),
          createIntroPage(
            string0004,
            string0008,
            progress,
          ),
        ],
        showSkipButton: false,
        showNextButton: false,
        showBackButton: false,
        showDoneButton: false,
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: primaryColorOne,
          size: Size.square(8),
        ),
        globalFooter: Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, signUpRoute, (route) => false);
                  },
                  child: const Text(string0152),
                  style: TextButton.styleFrom(
                    primary: secondaryColorOne,
                    backgroundColor: primaryColorOne,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: secondaryColorFour,
                      ),
                      children: <TextSpan>[
                        const TextSpan(text: string0153),
                        TextSpan(
                          text: string0154,
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
