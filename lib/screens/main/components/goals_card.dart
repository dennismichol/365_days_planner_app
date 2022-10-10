import 'package:flutter/material.dart';
import 'package:task_management/common/presentation/constants/colors.dart';
import 'package:task_management/common/presentation/constants/screen_dimensions.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({
    Key? key,
    required this.dotColor,
    required this.cardTitle,
    required this.cardDescription,
    required this.progress,
    required this.taskCount,
  }) : super(key: key);

  final Color? dotColor;
  final String cardTitle;
  final String cardDescription;
  final double progress;
  final String taskCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * .20,
      width: displayHeight(context) * .18,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(displayHeight(context) * .015),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.3,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: displayHeight(context) * .01,
          right: displayHeight(context) * .01,
          top: displayHeight(context) * .01,
          bottom: displayHeight(context) * .01,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.circle,
                  size: displayWidth(context) * 0.015,
                  color: dotColor,
                ),
                SizedBox(
                  width: (displayHeight(context) * 0.010).toDouble(),
                ),
                Text(
                  taskCount,
                  style: const TextStyle(
                    color: secondaryColorTwo,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: (displayHeight(context) * 0.015).toDouble(),
            ),
            Text(
              cardTitle,
              style: TextStyle(
                fontSize: (displayHeight(context) * 0.020).toDouble(),
                fontWeight: FontWeight.w600,
                color: progress == 1.0
                    ? secondaryColorTwo
                    : secondaryColorFour.withOpacity(.8),
                decoration: progress == 1.0 ? TextDecoration.lineThrough : null,
              ),
            ),
            SizedBox(
              height: (displayHeight(context) * 0.015).toDouble(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(
                cardDescription,
                style: TextStyle(
                  color:
                      progress == 1.0 ? secondaryColorTwo : secondaryColorThree,
                  decoration:
                      progress == 1.0 ? TextDecoration.lineThrough : null,
                  fontSize: (displayHeight(context) * 0.015).toDouble(),
                ),
              ),
            ),
            SizedBox(
              height: (displayHeight(context) * 0.035).toDouble(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: LinearProgressIndicator(
                value: progress,
                color: dotColor,
                backgroundColor: secondaryColorOne,
              ),
            ),
            SizedBox(
              height: (displayHeight(context) * 0.005).toDouble(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Progress',
                  style: TextStyle(
                    color: secondaryColorThree,
                    fontSize: (displayHeight(context) * 0.015).toDouble(),
                  ),
                ),
                Text(
                  (progress * 100).toInt().toString() + '%',
                  style: TextStyle(
                    color: secondaryColorThree,
                    fontSize: (displayHeight(context) * 0.015).toDouble(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
