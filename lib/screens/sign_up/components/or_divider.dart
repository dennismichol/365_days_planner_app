import 'package:flutter/material.dart';
import 'package:task_management/constants/strings.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: const [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(145, 0, 10, 0),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          Text(
            string0160,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 145, 0),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
