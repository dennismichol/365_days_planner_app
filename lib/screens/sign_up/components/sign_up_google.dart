import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmanagement/constants/colors.dart';
import 'package:taskmanagement/constants/strings.dart';

class SignUpGoogle extends StatelessWidget {
  const SignUpGoogle({
    Key? key,
  }) : super(key: key);

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
      child: TextButton.icon(
        onPressed: () {},
        icon: const FaIcon(
          FontAwesomeIcons.google,
          color: Colors.white,
        ),
        label: const Text(string0164),
        style: TextButton.styleFrom(
          foregroundColor: secondaryColorOne,
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
    );
  }
}
