import 'package:flutter/material.dart';
import 'package:taskmanagement/constants/colors.dart';

class HabitIcon extends StatelessWidget {
  const HabitIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
    required this.iconAlignment,
    required this.progress,
  }) : super(key: key);

  final IconData? icon;
  final Color? color;
  final String label;
  final AlignmentDirectional iconAlignment;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: iconAlignment,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: color,
                size: 25,
              ),
            ),
            SizedBox(
              height: 65,
              width: 65,
              child: CircularProgressIndicator(
                color: color,
                value: progress,
                backgroundColor: secondaryColorOne,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 75,
          height: 50,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: secondaryColorTwo,
            ),
          ),
        ),
      ],
    );
  }
}
