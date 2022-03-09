import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/images.dart';

Widget createIntroPage(String title, String body, SvgPicture image) {
  return Column(
    children: [
      const SizedBox(
        height: 25,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: image,
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 210),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontFamily: "SF Pro Display",
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: textColorFour,
                letterSpacing: 2.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 50, 65, 50),
              child: Text(
                body,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: "SF Pro Display",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: textColorThree,
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
