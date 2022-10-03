import 'package:flutter/material.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/screen_dimensions.dart';

class DateNowCard extends StatelessWidget {
  const DateNowCard({
    Key? key,
    required this.day,
    required this.date,
    required this.dotted,
    required this.selected,
  }) : super(key: key);

  final String day;
  final String date;
  final bool dotted;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * .07,
      width: displayWidth(context) / 8,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(displayHeight(context) * .01),
        ),
        color: selected ? primaryColorOne : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
                color: selected ? Colors.white : secondaryColorThree,
                fontSize: displayWidth(context) * 0.03,
                fontWeight: FontWeight.normal),
          ),
          Text(
            date,
            style: TextStyle(
              color: selected ? Colors.white : primaryColorOne,
              fontSize: displayWidth(context) * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.circle,
            size: displayWidth(context) * 0.012,
            color: (dotted && selected)
                ? Colors.white
                : (dotted && !selected)
                    ? primaryColorOne
                    : (!dotted && selected)
                        ? Colors.transparent
                        : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
