import 'package:flutter/material.dart';
import 'package:task_management/constants/colors.dart';
import 'package:task_management/constants/screen_dimensions.dart';

class DividerWithLeadThru extends StatelessWidget {
  const DividerWithLeadThru({
    Key? key,
    required this.title,
    required this.remainingTasks,
  }) : super(key: key);

  final String title;
  final String remainingTasks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: displayHeight(context) * .025,
        right: displayHeight(context) * .025,
        bottom: displayHeight(context) * .010,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: displayWidth(context) * 0.04,
              fontWeight: FontWeight.w600,
              color: secondaryColorThree,
            ),
          ),
          Container(
            height: displayWidth(context) * 0.05,
            width: displayWidth(context) * 0.08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(displayHeight(context) * .05),
              ),
              color: primaryColorOne,
            ),
            child: Text(
              remainingTasks,
              style: TextStyle(
                fontSize: displayWidth(context) * 0.03,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
