import 'package:flutter/material.dart';
import 'package:task_management/common/presentation/constants/colors.dart';
import 'package:task_management/common/presentation/constants/screen_dimensions.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    Key? key,
    required this.title,
    required this.time,
    required this.description,
    required this.isChecked,
    required this.isNotify,
    required this.isNote,
    required this.isMessage,
    required this.color,
  }) : super(key: key);

  final String title;
  final String time;
  final String description;
  final bool isChecked;
  final bool isNotify;
  final bool isNote;
  final bool isMessage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: displayHeight(context) * .011,
        right: displayHeight(context) * .011,
      ),
      child: SizedBox(
        height: displayHeight(context) * .075,
        width: displayWidth(context) * .925,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {},
                    activeColor: primaryColorOne,
                  ),
                ),
                SizedBox(
                  width: displayHeight(context) * .002,
                ),
                SizedBox(
                  width: displayWidth(context) * .3,
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: displayHeight(context) * 0.015,
                          decoration:
                              isChecked ? TextDecoration.lineThrough : null,
                          color: isChecked
                              ? secondaryColorTwo
                              : secondaryColorFour,
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: displayHeight(context) * 0.014,
                          decoration:
                              isChecked ? TextDecoration.lineThrough : null,
                          color: secondaryColorTwo,
                        ),
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: displayHeight(context) * 0.013,
                          decoration:
                              isChecked ? TextDecoration.lineThrough : null,
                          color: secondaryColorTwo,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Visibility(
                      child: const Icon(
                        Icons.notifications_outlined,
                        size: 15,
                        color: primaryColorOne,
                      ),
                      visible: isNotify,
                    ),
                    SizedBox(
                      width: displayHeight(context) * .0025,
                    ),
                    Visibility(
                      child: const Icon(
                        Icons.note_outlined,
                        size: 15,
                        color: primaryColorOne,
                      ),
                      visible: isNote,
                    ),
                    SizedBox(
                      width: displayHeight(context) * .0025,
                    ),
                    Visibility(
                      child: const Icon(
                        Icons.message,
                        size: 15,
                        color: primaryColorOne,
                      ),
                      visible: isMessage,
                    ),
                  ],
                ),
                SizedBox(
                  width: displayHeight(context) * .005,
                ),
                Container(
                  width: 4,
                  color: color,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
