import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_management/common/presentation/constants/colors.dart';
import 'package:task_management/common/presentation/constants/strings.dart';

class SignUpFacebook extends StatelessWidget {
  const SignUpFacebook({
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
          FontAwesomeIcons.facebookF,
          color: Colors.white,
        ),
        label: const Text(string0163),
        style: TextButton.styleFrom(
          foregroundColor: secondaryColorOne,
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
    );
  }
}
